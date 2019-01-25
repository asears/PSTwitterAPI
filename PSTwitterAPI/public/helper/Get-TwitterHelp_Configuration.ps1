﻿function Get-TwitterHelp_Configuration {
<#
.SYNOPSIS
    Get Twitter configuration details

.DESCRIPTION
    GET help/configuration
    
    Returns the current configuration used by Twitter including twitter.com slugs which are not usernames, maximum photo resolutions, and t.co shortened URL length.
    
    It is recommended applications request this endpoint when they are loaded, but no more than once a day.


.NOTES
    This helper function was generated by the information provided here:
    https://developer.twitter.com/en/docs/developer-utilities/configuration/api-reference/get-help-configuration

#>
    [CmdletBinding()]
    Param(
        
    )
    Begin {

        [hashtable]$Parameters = $PSBoundParameters
                   $CmdletBindingParameters | ForEach-Object { $Parameters.Remove($_) }

        [string]$Method      = 'GET'
        [string]$Resource    = '/help/configuration'
        [string]$ResourceUrl = 'https://api.twitter.com/1.1/help/configuration.json'

    }
    Process {

        If (-Not $OAuthSettings) { $OAuthSettings = Get-TwitterOAuthSettings -Resource $Resource }
        Invoke-TwitterAPI -Method $Method -ResourceUrl $ResourceUrl -Resource $Resource -Parameters $Parameters -OAuthSettings $OAuthSettings

    }
    End {

    }
}