# leadbolt.*

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library][api.type.Library]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Leadbolt
> __Platforms__			Android, iOS
> __Sample__			[https://github.com/coronalabs/plugins-sample-leadbolt](https://github.com/coronalabs/plugins-sample-leadbolt)
> --------------------- ------------------------------------------------------------------------------------------


## Overview

<div class="float-right" style="max-width: 240px; clear: both;">

![][images.docs.plugin-screenshot-leadbolt]

</div>

The Leadbolt plugin allows developers to monetize their mobile app with Leadbolt ads.


## Registration

Before you can use this plugin, you must [register](https://www.leadbolt.com/developers-signup/) with Leadbolt.


## Syntax

	local Leadbolt = require( "plugin.leadbolt" )


## Functions

#### [leadbolt.init()][plugin.leadbolt.init]

#### [leadbolt.isLoaded()][plugin.leadbolt.isLoaded]

#### [leadbolt.show()][plugin.leadbolt.show]


## Events

#### [adsRequest][plugin.leadbolt.event.adsRequest]


## Project Settings

To use this plugin, add two entries into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

``````lua
settings =
{
	plugins =
	{
		["plugin.leadbolt"] =
		{
			publisherId = "com.coronalabs",
			supportedPlatforms = { iphone=true, android=true }
		},
		["plugin.google.play.services"] =
		{
			publisherId = "com.coronalabs",
			supportedPlatforms = { android=true }
		},
	},
}
``````

<!--- Include ATS "override" template block --->
TEMPLATE_ATS
<!--- --->

<div class="guide-notebox">
<div class="notebox-title">Note</div>

For Android, the following permissions/features are automatically added when using this plugin:

``````lua
	android =
	{
		usesPermissions =
		{
			"android.permission.INTERNET",
			"android.permission.ACCESS_NETWORK_STATE",
		},
	},
``````

</div>


## Support

* [https://www.leadbolt.com](https://www.leadbolt.com)
* [Corona Forums](http://forums.coronalabs.com/forum/545-monetization-in-app-purchases-ads-etc/)
