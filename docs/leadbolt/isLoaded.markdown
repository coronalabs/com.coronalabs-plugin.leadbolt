# leadbolt.hide()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Leadbolt, hide
> __See also__          [leadbolt.show()][plugin.leadbolt.show]
>						[leadbolt.*][plugin.leadbolt]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Hides a currently displayed Leadbolt banner ad. Does not apply to interstitial or video ads.


## Syntax

	leadbolt.isLoaded( adUnitType )

##### adUnitType ~^(required)^~
_[String][api.type.String]._ The type of ad you wish to check is loaded. Valid values are `"interstitial"` or `"video"`.


## Example

``````lua
local leadbolt = require( "plugin.leadbolt" )

local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		-- Show an ad
		leadbolt.show( "interstitial" )

	elseif ( event.phase == "failed" ) then  -- The ad failed to load
		print( event.type )
		print( event.isError )
		print( event.response )
	end
end

-- Initialize the Leadbolt plugin
leadbolt.init( adListener, { apiKey="YOUR_API_KEY" } )

-- Sometime later, hide the ad
leadbolt.isLoaded( "interstitial" )
``````
