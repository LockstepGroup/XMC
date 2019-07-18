---
external help file: XMC-help.xml
Module Name: XMC
online version:
schema: 2.0.0
---

# Get-XmcEndSystemGroup

## SYNOPSIS
Retrieves End System Group from XMC.

## SYNTAX

```
Get-XmcEndSystemGroup [-Name] <String> [<CommonParameters>]
```

## DESCRIPTION
Retrieves End System Group from XMC.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-XmcEndSystemGroup -Name Administrators
```

Retrieves details of Administrators End System Group, includes members.

## PARAMETERS

### -Name
Name of End System Group to query

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object[]

## NOTES

## RELATED LINKS
