function Remove-XmcMacFromEndSystemGroup {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, Position = 0)]
        [string]$GroupName,

        [Parameter(Mandatory = $True, Position = 0)]
        [string]$MacAddress,

        [Parameter(Mandatory = $False, Position = 0)]
        [switch]$Reauthorize
    )

    BEGIN {
        $VerbosePrefix = 'Remove-XmcMacFromEndSystemGroup:'

        $QueryPage = 'axis/services/NACEndSystemWebService/removeMACFromEndSystemGroup?endSystemGroup=' + $GroupName
        $QueryPage += '&mac=' + $MacAddress
        $QueryPage += '&reauthorize=' + $Reauthorize
    }

    PROCESS {
        $Response = $global:XmcServer.invokeApiQuery($QueryPage)
        if ($Response.removeMACFromEndSystemGroupResponse.return -eq 0) {
            Write-Verbose "$VerbosePrefix MAC Address ($MacAddress) removed successfully from Group ($GroupName)."
        } else {
            Throw "$VerbosePrefix Could not remove MAC Address ($MacAddress) from Group ($GroupName), probably doesn't exist."
        }
    }

    END {
        return $Response
    }
}
