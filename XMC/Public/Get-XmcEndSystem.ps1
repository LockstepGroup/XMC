function Get-XmcEndSystem {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, ParameterSetName = 'IpAddress', Position = 0)]
        [IpAddress]$IpAddress,

        [Parameter(Mandatory = $True, ParameterSetName = 'Username', Position = 0)]
        [string]$Username,

        [Parameter(Mandatory = $True, ParameterSetName = 'MacAddress', Position = 0)]
        [string]$MacAddress
    )

    BEGIN {
        switch ($PsCmdlet.ParameterSetName) {
            'IpAddress' {
                $QueryPage = '/axis/services/NACEndSystemWebService/findEndSystem?search=' + $IpAddress
            }
            'Username' {
                $QueryPage = '/axis/services/NACEndSystemWebService/findEndSystem?search=' + $Username
            }
            'MacAddress' {
                $QueryPage = '/axis/services/NACEndSystemWebService/findEndSystem?search=' + $MacAddress
            }
        }
        $ReturnObject = @()
    }

    PROCESS {
        $Response = $global:XmcServer.invokeApiQuery($QueryPage)
        $ParsedResponseObject = $Response.findEndSystemResponse.return -split ',(?!\s)' | ConvertFrom-StringData

        $ThisObject = New-XmcEndSystem
        $ThisObject.Policy = $ParsedResponseObject.policy

        $PolicySplit = $ThisObject.Policy.Trim('"').Split(',')
        if ($PolicySplit.Count -gt 1) {
            $ConvertedPolicy = $PolicySplit | ConvertFrom-StringData
            $ThisObject.FilterId = $ConvertedPolicy.'Filter-Id'.Trim("'")
            $ThisObject.LoginLatPort = $ConvertedPolicy.'Login-LAT-Port'.Trim("'")
        }

        $ThisObject.RegistrationType = $ParsedResponseObject.regType
        $ThisObject.AuthenticationType = $ParsedResponseObject.authType
        $ThisObject.HostName = $ParsedResponseObject.hostName
        $ThisObject.LastAssessmentHashCodeChangeTime = $ParsedResponseObject.lastAssmtHashCodeChangeTime
        $ThisObject.StartAssessmentWarningTime = $ParsedResponseObject.startAssmtWarningTime
        $ThisObject.AllAuthenticationTypes = $ParsedResponseObject.allAuthTypes
        $ThisObject.LastScanTime = $ParsedResponseObject.lastScanTime

        $ThisObject.IpAddress = $ParsedResponseObject.ipAddress
        $ThisObject.Zone = $ParsedResponseObject.zone
        $ThisObject.Class = $ParsedResponseObject.class
        $ThisObject.SwitchPort = $ParsedResponseObject.switchPort
        $ThisObject.LastSeenTime = $ParsedResponseObject.lastSeenTime
        $ThisObject.Reason = $ParsedResponseObject.reason
        $ThisObject.StateDescription = $ParsedResponseObject.stateDescr
        $ThisObject.ExtendedState = $ParsedResponseObject.extendedState
        $ThisObject.Source = $ParsedResponseObject.source
        $ThisObject.TlsClientCertificateFingerprint = $ParsedResponseObject.tlsClientCertFingerprint
        $ThisObject.MacAddress = $ParsedResponseObject.macAddress
        $ThisObject.TlsClientCertificateIssuer = $ParsedResponseObject.tlsClientCertIssuer
        $ThisObject.LastQuarantineTime = $ParsedResponseObject.lastQuarantineTime
        $ThisObject.SwitchPortId = $ParsedResponseObject.switchPortId
        $ThisObject.OperatingSystem = $ParsedResponseObject.operatingSystemName
        $ThisObject.FirstSeenTime = $ParsedResponseObject.firstSeenTime
        $ThisObject.Username = $ParsedResponseObject.username
        $ThisObject.SiteId = $ParsedResponseObject.siteId
        $ThisObject.SwitchIp = $ParsedResponseObject.switchIP
        $ThisObject.Id = $ParsedResponseObject.id
        $ThisObject.NacApplianceGroupName = $ParsedResponseObject.nacApplianceGroupName
        if ("" -ne $ParsedResponseObject.radiusServerIp) {
            $ThisObject.RadiusServerIp = $ParsedResponseObject.radiusServerIp
        }
        $ThisObject.EsType = $ParsedResponseObject.ESType
        $ThisObject.LastAuthEventTime = $ParsedResponseObject.lastAuthEventTime
        $ThisObject.LocationInfo = $ParsedResponseObject.locationInfo
        $ThisObject.RequestAttributes = $ParsedResponseObject.requestAttributes
        $ThisObject.NacApplianceIp = $ParsedResponseObject.nacApplianceIP
        $ThisObject.TlsClientCertificateExpiration = $ParsedResponseObject.tlsClientCertExpiration
        $ThisObject.AssessmentHashCode = $ParsedResponseObject.assmtHashCode
        $ThisObject.NacProfileName = $ParsedResponseObject.nacProfileName
        $ThisObject.LastScanResultState = $ParsedResponseObject.lastScanResultState
        $ThisObject.State = $ParsedResponseObject.state

        # Ap Location Info
        $LocationSplit = $ThisObject.LocationInfo.Trim('"').Split()
        if ($LocationSplit.Count -gt 1) {
            $ConvertedLocationSplit = $LocationSplit | ConvertFrom-StringData
            $ThisObject.ApMac = $ConvertedLocationSplit.AP_MAC
            $ThisObject.ApName = $ConvertedLocationSplit.AP_NAME
            $ThisObject.ApSerial = $ConvertedLocationSplit.AP_SERIAL
            $ThisObject.InterfaceName = $ConvertedLocationSplit.IFDESC
            $ThisObject.InterfaceDescription = $ConvertedLocationSplit.AP_MAC
            $ThisObject.InterfaceAlias = $ConvertedLocationSplit.IFALIAS
            $ThisObject.Ssid = $ConvertedLocationSplit.SSID
        }
        $ReturnObject += $ThisObject
    }

    END {
        return $ReturnObject
    }
}