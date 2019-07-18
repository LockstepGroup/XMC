function Get-XmcEndSystemGroup {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, Position = 0)]
        [string]$Name
    )

    BEGIN {
        $QueryPage = '/axis/services/NACEndSystemWebService/getNamedList?listName=' + $Name
        $ReturnObject = @()
    }

    PROCESS {
        $Response = $global:XmcServer.invokeApiQuery($QueryPage)
        $Response = ([xml]$Response.getNamedListResponse.return).'com.enterasys.netsight.api.groups.model.Group'

        $ThisObject = New-XmcEndSystemGroup

        $ThisObject.Name = $Response.name
        $ThisObject.Type = $Response.typeStr
        $ThisObject.Mode = $Response.modeStr
        $ThisObject.IsDynamic = $Response.isDynamic
        $ThisObject.Description = $Response.description
        $ThisObject.CreatedBy = $Response.createdBy
        $ThisObject.LastModifiedBy = $Response.lastModifiedBy
        $ThisObject.RevisionCounter = $Response.revisionCounter
        $ThisObject.OutOfSync = $Response.outOfSynch
        $ThisObject.Source = $Response.source
        $ThisObject.ScopeType = $Response.scopeTypeStr
        $ThisObject.GimType = $Response.gimType
        $ThisObject.Member = $Response.values.string

        $ThisObject.CreationTime = ([DateTimeOffset]::FromUnixTimeMilliseconds($Response.creationTime)).LocalDateTime
        $ThisObject.LastModifiedTime = ([DateTimeOffset]::FromUnixTimeMilliseconds($Response.lastModifiedTime)).LocalDateTime

        $ReturnObject += $ThisObject
    }

    END {
        return $ReturnObject
    }
}