# event.phase

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [String][api.type.String]
> __Event__             [adsRequest][plugin.leadbolt.event.adsRequest]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, leadbolt, adsRequest, phase
> __See also__			[adsRequest][plugin.leadbolt.event.adsRequest]
>						[leadbolt.*][plugin.leadbolt]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

[String][api.type.String] value indicating the phase of the [adsRequest][plugin.leadbolt.event.adsRequest] event. Possible values include:

* `"init"` &mdash; Indicates that the Leadbolt plugin was initialized successfully.

* `"loaded"` &mdash; Indicates that an ad loaded successfully. For this phase, [event.type][plugin.leadbolt.event.adsRequest.type] can provide additional context.

* `"clicked"` &mdash; Indicates that an ad was clicked/tapped. For this phase, [event.type][plugin.leadbolt.event.adsRequest.type] can provide additional context.

* `"closed"` &mdash; Indicates that an ad was closed. For this phase, [event.type][plugin.leadbolt.event.adsRequest.type] can provide additional context.

* `"failed"` &mdash; Indicates that an ad failed to load. For this phase, [event.isError][plugin.leadbolt.event.adsRequest.isError] will be `true`. Additionally, [event.type][plugin.leadbolt.event.adsRequest.type] and [event.response][plugin.leadbolt.event.adsRequest.response] can provide additional context.
