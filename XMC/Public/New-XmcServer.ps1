function New-XmcServer {
    [CmdletBinding()]
    Param (
    )

    BEGIN {
    }

    PROCESS {
        return [XmcServer]::new()
    }
}