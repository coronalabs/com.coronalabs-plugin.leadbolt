# leadbolt.show()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Appodeal, show
> __See also__          [leadbolt.isLoaded()][plugin.leadbolt.isLoaded]
>						[leadbolt.*][plugin.leadbolt]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Shows an Leadbolt ad. Leadbolt automatically caches ads in the background, so there is no need to load ads in advance of calling this method.


## Syntax

	leadbolt.show( adUnitType )

##### adUnitType ~^(required)^~
_[String][api.type.String]._ The type of ad you wish to display. Valid values are `"interstitial"` or `"video"`.

## Example

``````lua
local leadbolt = require( "plugin.leadbolt" )

local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		-- Show a banner ad
		leadbolt.show( "video" )

	elseif ( event.phase == "failed" ) then  -- The ad failed to load
		print( event.type )
		print( event.isError )
		print( event.response )
	end
end

-- Initialize the Leadbolt plugin
leadbolt.init( adListener, { apiKey="YOUR_API_KEY" } )
``````
