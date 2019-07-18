class XmcEndSystem {
    [string]$Policy
    [string]$FilterId
    [int]$LoginLatPort
    [string]$RegistrationType
    [string]$AuthenticationType
    [string]$HostName
    [string]$LastAssessmentHashCodeChangeTime
    [string]$StartAssessmentWarningTime
    [string]$AllAuthenticationTypes
    [string]$LastScanTime
    [IpAddress]$IpAddress
    [string]$Zone
    [string]$Class
    [string]$SwitchPort
    [string]$LastSeenTime
    [string]$Reason
    [string]$StateDescription
    [string]$ExtendedState
    [string]$Source
    [string]$TlsClientCertificateFingerprint
    [string]$MacAddress
    [string]$TlsClientCertificateIssuer
    [string]$LastQuarantineTime
    [string]$SwitchPortId
    [string]$OperatingSystem
    [string]$FirstSeenTime
    [string]$Username
    [string]$SiteId
    [IpAddress]$SwitchIp
    [int]$Id
    [string]$NacApplianceGroupName
    [IpAddress]$RadiusServerIp
    [string]$EsType
    [string]$LastAuthEventTime
    [string]$LocationInfo
    [string]$RequestAttributes
    [IpAddress]$NacApplianceIp
    [string]$TlsClientCertificateExpiration
    [string]$AssessmentHashCode
    [string]$NacProfileName
    [string]$LastScanResultState
    [string]$State

    # Ap Location Info
    [string]$ApMac
    [string]$ApName
    [string]$ApSerial
    [string]$InterfaceName
    [string]$InterfaceDescription
    [string]$InterfaceAlias
    [string]$Ssid

    #region initiators
    ###################################################################################

    # blank initiator
    XmcEndSystem() {
    }

    ###################################################################################
    #endregion initiators
}