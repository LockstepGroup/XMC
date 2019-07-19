---
external help file: XMC-help.xml
Module Name: XMC
online version:
schema: 2.0.0
---

# Remove-XmcMacFromEndSystemGroup

## SYNOPSIS
Removes a MAC address from an End System Group.

## SYNTAX

```
Remove-XmcMacFromEndSystemGroup [-GroupName] <String> [-MacAddress] <String> [-Reauthorize]
 [<CommonParameters>]
```

## DESCRIPTION
Removes a MAC address from an End System Group.

## EXAMPLES

### Example 1
```powershell
PS C:\> Remove-XmcMacFromEndSystemGroup -GroupName Quarantine -MacAddress '00:11:22:33:44:55'
```

Removes Mac Address 00:11:22:33:44:55 from End System Group Quarantine.

## PARAMETERS

### -GroupName
Name of End System Group to modify

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

### -MacAddress
MAC Address to remove

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

### -Reauthorize
Forces Reauthorization

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
