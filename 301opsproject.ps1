function NewADForest {
  param (

  
  )
    # Install the Active Directory Domain Services role
    Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools -Verbose

    # Promote the server to a domain controller
    Install-ADDSForest -CreateDnsDelegation:$false `
                      -DatabasePath "C:\Windows\NTDS" `
                      -DomainMode "Win2019" `
                      -DomainName $DomainName `
                      -DomainNetbiosName $DomainNetBIOSName `
                      -ForestMode "Win2019" `
                      -InstallDns:$true `
                      -LogPath "C:\Windows\NTDS" `
                      -NoRebootOnCompletion:$true `
                      -SysvolPath "C:\Windows\SYSVOL" `
                      -Force:$true `
                      -SafeModeAdministratorPassword (ConvertTo-SecureString -String $DSRMPassword -AsPlainText -Force) `
                      -Verbose

    # Restart the server to complete the promotion
    Restart-Computer -Force
}

# Example usage of the function
NewADForest -ForestName "harmonitech.com" -DomainName "harmonitech" -DomainNetBIOSName "EXAMPLE" -DSRMPassword "Catatemydog89!"





}
