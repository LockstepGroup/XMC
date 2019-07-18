class XmcServer {
    # basic info
    [string]$Hostname

    [ValidateRange(1, 65535)]
    [int]$Port = 8443

    [ValidateSet('http', 'https')]
    [string]$Protocol = "https"

    hidden [System.Management.Automation.PSCredential]$Credential

    # track usage
    hidden [bool]$Connected
    [string[]]$UrlHistory
    [array]$QueryResultHistory
    $LastError
    $LastResult

    # Generate Api URL
    [String] getApiUrl([string]$queryPath) {
        if ($this.Hostname) {
            $url = "https://" + $this.Hostname + ':' + $this.Port + "/" + $queryPath
            return $url
        } else {
            return $null
        }
    }

    #region invokeApiQuery
    ###################################################################################
    [xml] invokeApiQuery([string]$queryPath) {

        # check to make sure we're connected
        if ($false -eq $this.Connected) {
            if ($queryPath -ne 'axis/services/InventoryWebService/test') {
                try {
                    Throw "not connected"
                } catch {
                    Throw "not connected, use Connect-XmcServer to get started"
                }
            }
        }

        $RestParams = @{
            Uri        = $this.getApiUrl($queryPath)
            Credential = $this.Credential
        }

        # Populate Query/Url History
        $this.UrlHistory += $RestParams.Uri

        # try query
        try {
            # ignore cert warnings
            switch ($global:PSVersionTable.PSEdition) {
                'Core' {
                    $RestParams.SkipCertificateCheck = $true
                    continue
                }
                default {
                    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
                    try {
                        add-type @"
    using System.Net;
    using System.Security.Cryptography.X509Certificates;
    public class TrustAllCertsPolicy : ICertificatePolicy {
        public bool CheckValidationResult(
            ServicePoint srvPoint, X509Certificate certificate,
            WebRequest request, int certificateProblem) {
            return true;
        }
    }
"@
                    } catch {

                    }
                    [System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy
                    continue
                }
            }

            $result = Invoke-WebRequest @RestParams
        } catch {
            $this.LastError = $_
            Throw $_
        }

        $this.QueryResultHistory += $result
        $this.LastResult = $result

        return $result
    }

    ###################################################################################
    #endregion invokeApiQuery

    #region queries
    ###################################################################################

    # test query
    [bool] invokeTestQuery() {
        $queryPath = 'axis/services/InventoryWebService/test'
        $result = $this.invokeApiQuery($queryPath)
        if ($result.testResponse.return -match 'This\ web\ service\ functions.') {
            $this.Connected = $true
            return $true
        } else {
            return $false
        }
    }

    ###################################################################################
    #endregion queries

    #region initiators
    ###################################################################################

    # blank initiator
    XmcServer() {
    }

    ###################################################################################
    #endregion initiators
}