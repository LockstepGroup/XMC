---
external help file: XMC-help.xml
Module Name: XMC
online version:
schema: 2.0.0
---

# Get-XmcEndSystem

## SYNOPSIS
Retrieve End System details from XMC.

## SYNTAX

### IpAddress
```
Get-XmcEndSystem [-IpAddress] <IPAddress> [<CommonParameters>]
```

### Username
```
Get-XmcEndSystem [-Username] <String> [<CommonParameters>]
```

### MacAddress
```
Get-XmcEndSystem [-MacAddress] <String> [<CommonParameters>]
```

## DESCRIPTION
Retrieve End System details from XMC.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-XmcEndSystem -IpAddress 1.1.1.1
```

Retrives End System information for 1.1.1.1.

### Example 2
```powershell
PS C:\> Get-XmcEndSystem -Username john.doe
```

Retrives End System information for john.doe.

### Example 3
```powershell
PS C:\> Get-XmcEndSystem -MacAddress 11:22:33:44:55:66
```

Retrives End System information for 11:22:33:44:55:66.

## PARAMETERS

### -IpAddress
IP Address of End System to retrieve

```yaml
Type: IPAddress
Parameter Sets: IpAddress
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MacAddress
MAC Address of End System to retrieve

```yaml
Type: String
Parameter Sets: MacAddress
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Username
Username of End System to retrieve

```yaml
Type: String
Parameter Sets: Username
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object[]

## NOTES

## RELATED LINKS
