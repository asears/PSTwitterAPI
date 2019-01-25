﻿function Send-TwitterMedia_MetadataCreate {
<#
.SYNOPSIS
    Upload media

.DESCRIPTION
    POST media/metadata/create
    
    Overview
    
    This endpoint can be used to provide additional information about the uploaded media_id. This feature is currently only supported for images and GIFs.
    
    The request flow should be:
    
    Upload media using either the simple upload endpoint or the (preferred) chunked upload endpoint.
    Call this endpoint to attach additional metadata such as image alt text.
    Create Tweet with media_id(s) attached.
    
    Request
    
    Requests should be HTTP POST with a JSON content body, and Content-Type application/json; charset=UTF-8 or text/plain; charset=UTF-8.
    
    Note: The domain for this endpoint is upload.twitter.com
    
    Response
    
    A successful response returns HTTP 2xx.


.NOTES
    This helper function was generated by the information provided here:
    https://developer.twitter.com/en/docs/media/upload-media/api-reference/post-media-metadata-create

#>
    [CmdletBinding()]
    Param(
        
    )
    Begin {

        [hashtable]$Parameters = $PSBoundParameters
                   $CmdletBindingParameters | ForEach-Object { $Parameters.Remove($_) }

        [string]$Method      = 'POST'
        [string]$Resource    = '/media/metadata/create'
        [string]$ResourceUrl = 'https://upload.twitter.com/1.1/media/metadata/create.json'

    }
    Process {

        If (-Not $OAuthSettings) { $OAuthSettings = Get-TwitterOAuthSettings -Resource $Resource }
        Invoke-TwitterAPI -Method $Method -ResourceUrl $ResourceUrl -Resource $Resource -Parameters $Parameters -OAuthSettings $OAuthSettings

    }
    End {

    }
}