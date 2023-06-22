# Author: Jasmine Garcia
# Date of latest revision: 6/22/2023
# Purpose: Create a script that creates an AD Forest

function NewADForest {
        param(
        [Parameter(Mandatory = $true)]
        [string]$ForestName,

        [Parameter(Mandatory = $true)]
        [string]$DomainName,

        [Parameter(Mandatory = $true)]
        [string]$DomainNetBIOSName,

        [Parameter(Mandatory = $true)]
        [string]$DSRMPassword
    )
    
    # Install Active Directory Domain Services role
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
NewADForest -ForestName "harmonitech.com" -DomainName "harmonitech" -DomainNetBIOSName "HARMONITECH" -DSRMPassword "Catatemydog89!"

}

#Resources: 
