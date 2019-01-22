
function Get-TwitterApplication_RateLimitStatus {
<#
    .SYNOPSIS
    Mimics Twitter API parameters for GET application/rate_limit_status

    .PARAMETER force
    skips the checking of the RateLimit.. because we are asking to get the RateLimit (which could be empty).
#>
    [CmdletBinding()]
    param (

        [Parameter(Mandatory = $false)]
        [system.string]
        $resources,

        [hashtable]
        $OAuthSettings

    )

    Begin {

        $Method   = "GET"
        $Resource = "application/rate_limit_status"

        [hashtable]$Parameters    = $PSBoundParameters
                    $CmdletBindingParameters | % { $Parameters.Remove($_) }
                    $Parameters.Remove('OAuthSettings')

    }

    Process {

        If (-Not $OAuthSettings) { If (-Not $OAuthSettings) { $OAuthSettings = Get-TwitterOAuthSettings -Resource $Resource } }
        Invoke-TwitterAPI -Resource $Resource -Method $Method -Parameters $Parameters -OAuthSettings $OAuthSettings

    }

}