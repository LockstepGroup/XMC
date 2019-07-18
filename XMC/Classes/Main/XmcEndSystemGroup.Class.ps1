class XmcEndSystemGroup {
    [string]$Name
    [string]$Type
    [string]$Mode
    [bool]$IsDynamic
    [string]$Description
    [string]$CreatedBy
    [string]$LastModifiedBy
    [int]$RevisionCounter
    [bool]$OutOfSync
    [string]$Source
    [string]$ScopeType
    [string]$GimType
    [string[]]$Member

    [datetime]$CreationTime
    [datetime]$LastModifiedTime

    #region initiators
    ###################################################################################

    # blank initiator
    XmcEndSystemGroup() {
    }

    ###################################################################################
    #endregion initiators
}