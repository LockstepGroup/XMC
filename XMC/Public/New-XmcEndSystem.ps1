function New-XmcEndSystem {
    [CmdletBinding()]
    Param (
    )

    BEGIN {
    }

    PROCESS {
        return [XmcEndSystem]::new()
    }
}