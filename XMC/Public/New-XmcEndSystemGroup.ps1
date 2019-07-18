function New-XmcEndSystemGroup {
    [CmdletBinding()]
    Param (
    )

    BEGIN {
    }

    PROCESS {
        return [XmcEndSystemGroup]::new()
    }
}