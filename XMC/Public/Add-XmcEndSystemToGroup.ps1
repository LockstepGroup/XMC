function Add-XmcEndSystemToGroup {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, Position = 0)]
        [string]$GroupName,

        [Parameter(Mandatory = $True, Position = 0)]
        [string]$Member,

        [Parameter(Mandatory = $False, Position = 0)]
        [string]$MemberDescription = "Added by API",

        [Parameter(Mandatory = $False, Position = 0)]
        [switch]$ReauthenticateMember,

        [Parameter(Mandatory = $False, Position = 0)]
        [switch]$RemoveFromOtherGroups
    )

    BEGIN {
        $QueryPage = 'axis/services/NACEndSystemWebService/addValueToNamedList?list=' + $GroupName
        $QueryPage += '&value=' + $Member
        $QueryPage += '&description=' + $MemberDescription
        $QueryPage += '&reauthenticate=' + $ReauthenticateMember
        $QueryPage += '&removeFromOtherGroups=' + $RemoveFromOtherGroups
    }

    PROCESS {
        $Response = $global:XmcServer.invokeApiQuery($QueryPage)
    }

    END {
        return $Response
    }
}