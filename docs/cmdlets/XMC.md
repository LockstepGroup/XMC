---
Module Name: XMC
Module Guid: 99bf7f17-2122-4ae8-b331-b614ba4b06a7
Download Help Link: {{Please enter FwLink manually}}
Help Version: {{Please enter version of help manually (X.X.X.X) format}}
Locale: en-US
---

# XMC Module
## Description
PowerShell Module for Extreme Management Center

## XMC Cmdlets
### [Add-XmcEndSystemToGroup](Add-XmcEndSystemToGroup.md)
Adds an End System to an End System Group. Does not require an enforce to take effect. The Member type much match the End System Group type, ie: you must use a mac address for a mac group.

### [Connect-XmcServer](Connect-XmcServer.md)
Creates initial connection to XMC Server. Initiates a call to 'InventoryWebService/test' endpoint and creates a $global:XmcServer object to track calls and access info.

### [Get-XmcEndSystem](Get-XmcEndSystem.md)
Retrieve End System details from XMC.

### [Get-XmcEndSystemGroup](Get-XmcEndSystemGroup.md)
Retrieves End System Group from XMC.

### [New-XmcEndSystem](New-XmcEndSystem.md)
Creates a new XmcEndSystem object. This Cmdlet does NOT add a group to Xmc, this is just a poweshell object.

### [New-XmcEndSystemGroup](New-XmcEndSystemGroup.md)
Creates a new XmcEndSystemGroup object. This Cmdlet does NOT add a group to Xmc, this is just a poweshell object.

### [New-XmcServer](New-XmcServer.md)
Creates a new XmcServer object.

