﻿function Send-TwitterAccount_RemoveProfileBanner {

<#
.SYNOPSIS
    Manage account settings and profile

.DESCRIPTION
    POST account/remove_profile_banner
    
    Removes the uploaded profile banner for the authenticating user. Returns HTTP 200 upon success.


.NOTES
    This helper function was generated by the information provided here:
    https://developer.twitter.com/en/docs/accounts-and-users/manage-account-settings/api-reference/post-account-remove_profile_banner

#>
    [CmdletBinding()]
    Param(
        
    )
    Begin {

        [string]$Method      = 'POST'
        [string]$Resource    = '/account/remove_profile_banner'
        [string]$ResourceUrl = 'https://api.twitter.com/1.1/account/remove_profile_banner.json'

        [hashtable]$Parameters = $PSBoundParameters
                   $CmdletBindingParameters | ForEach-Object { $Parameters.Remove($_) }

    }
    Process {

        If (-Not $OAuthSettings) { $OAuthSettings = Get-TwitterOAuthSettings -Resource $Resource }
        Invoke-TwitterAPI -Method $Method -ResourceUrl $ResourceUrl -Resource $Resource -Parameters $Parameters -OAuthSettings $OAuthSettings

    }
    End {

    }
}