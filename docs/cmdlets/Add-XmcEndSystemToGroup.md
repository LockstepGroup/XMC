---
external help file: XMC-help.xml
Module Name: XMC
online version:
schema: 2.0.0
---

# Add-XmcEndSystemToGroup

## SYNOPSIS
Adds an End System to an End System Group.

## SYNTAX

```
Add-XmcEndSystemToGroup [-GroupName] <String> [-Member] <String> [[-MemberDescription] <String>]
 [-ReauthenticateMember] [-RemoveFromOtherGroups] [<CommonParameters>]
```

## DESCRIPTION
Adds an End System to an End System Group. Does not require an enforce to take effect. The Member type much match the End System Group type, ie: you must use a mac address for a mac group.

## EXAMPLES

### Example 1
```powershell
PS C:\> Add-XmcEndSystemToGroup -GroupName MyGroup -Member john.doe -MemberDescription "new user for accounting" -ReauthenticateMember -RemoveFromOtherGroups
```

Adds user john.doe to group MyGroup with description "new user for accounting". Also forces reauthentication and removes the user from all other groups.

## PARAMETERS

### -GroupName
Xmc End System Group to update

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

### -Member
End System to update

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

### -MemberDescription
Description of added member (cannot be empty)

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReauthenticateMember
Forces reauthentication for End System

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

### -RemoveFromOtherGroups
Removes End System from all other groups

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
