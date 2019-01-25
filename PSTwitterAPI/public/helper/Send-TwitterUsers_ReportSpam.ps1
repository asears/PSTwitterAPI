﻿function Send-TwitterUsers_ReportSpam {

<#
.SYNOPSIS
    Mute, block and report users

.DESCRIPTION
    POST users/report_spam
    
    Report the specified user as a spam account to Twitter. Additionally, optionally performs the equivalent of POST blocks / create on behalf of the authenticated user.

.PARAMETER screen_name
    The screen_name of the user to report as a spammer. Helpful for disambiguating when a valid screen name is also a user ID.

.PARAMETER user_id
    The ID of the user to report as a spammer. Helpful for disambiguating when a valid user ID is also a valid screen name.

.PARAMETER perform_block
    Whether the account should be blocked by the authenticated user, as well as being reported for spam.

.NOTES
    This helper function was generated by the information provided here:
    https://developer.twitter.com/en/docs/accounts-and-users/mute-block-report-users/api-reference/post-users-report_spam

#>
    [CmdletBinding()]
    Param(
        [string]$screen_name,
        [string]$user_id,
        [string]$perform_block
    )
    Begin {

        [string]$Method      = 'POST'
        [string]$Resource    = '/users/report_spam'
        [string]$ResourceUrl = 'https://api.twitter.com/1.1/users/report_spam.json'

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