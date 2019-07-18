function Connect-XmcServer {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, Position = 0)]
        [ValidatePattern("\d+\.\d+\.\d+\.\d+|(\w\.)+\w")]
        [string]$Hostname,

        [Parameter(Mandatory = $False, Position = 1)]
        [int]$Port = 8443,

        [Parameter(Mandatory = $True, Position = 2)]
        [System.Management.Automation.PSCredential]
        [System.Management.Automation.Credential()]
        $Credential
    )

    BEGIN {
        $XmcServer = New-XmcServer
        $XmcServer.Hostname = $Hostname
        $XmcServer.Port = $Port
        $XmcServer.Credential = $Credential
    }

    PROCESS {
        $TestConnection = $XmcServer.invokeTestQuery()
    }

    END {
        if ($TestConnection) {
            $global:XmcServer = $XmcServer
        }
        return $TestConnection
    }
}