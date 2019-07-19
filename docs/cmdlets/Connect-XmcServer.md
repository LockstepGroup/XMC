---
external help file: XMC-help.xml
Module Name: XMC
online version:
schema: 2.0.0
---

# Connect-XmcServer

## SYNOPSIS
Creates initial connection to XMC Server.

## SYNTAX

```
Connect-XmcServer [-Hostname] <String> [[-Port] <Int32>] [-Credential] <PSCredential> [<CommonParameters>]
```

## DESCRIPTION
Creates initial connection to XMC Server. Initiates a call to 'InventoryWebService/test' endpoint and creates a $global:XmcServer object to track calls and access info.

## EXAMPLES

### Example 1
```powershell
PS C:\> Connect-XmcServer -Hostname 'xmc.example.com' -Port 8443 -Credential (Get-Credential)
```

Connects to xmc.example.com on port 8443, prompts for credentials.

## PARAMETERS

### -Credential
Credentials for XMC

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Hostname
Hostname or IP Address for XMC server

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Port
SSL port for XMC server

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Boolean

## NOTES

## RELATED LINKS
