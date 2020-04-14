# leadbolt.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Leadbolt, init
> __See also__          [leadbolt.show()][plugin.leadbolt.show]
>						[leadbolt.*][plugin.leadbolt]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

`leadbolt.init()` initializes the Leadbolt plugin.

Once initialized, you can show an ad using [leadbolt.show()][plugin.leadbolt.show].


## Syntax

	leadbolt.init( adListener, params )

##### adListener ~^(required)^~
_[Listener][api.type.Listener]._ Listener function that will receive [adsRequest][plugin.leadbolt.event.adsRequest] events.

##### params ~^(required)^~
_[Table][api.type.Table]._ Table containing Leadbolt initialization values — see the next section for details.


## Parameter Reference

The `params` table includes initialization properties for the Leadbolt plugin.

##### apiKey ~^(required)^~
_[String][api.type.String]._ Your Leadbolt api key. You can find this ID in the [Leadbolt developer portal](https://portal.leadbolt.com/p/app), located under your app's name as "API&nbsp;Key."

##### ageRange ~^(optional)^~
_[String][api.type.String]._ The age range of your user. Valid values are `"13-17"`, `"18-25"`, `"26-35"`, `"36-45"`, `"46+"`,

##### gender ~^(optional)^~
_[String][api.type.String]._ The gender of your user. Valid values are either `"Male"` or `"Female"`.

## Example

``````lua
local leadbolt = require( "plugin.leadbolt" )

local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		print( event.isError )
	end
end

-- Initialize the Leadbolt plugin
leadbolt.init( adListener, { apiKey="YOUR_API_KEY" } )
``````
