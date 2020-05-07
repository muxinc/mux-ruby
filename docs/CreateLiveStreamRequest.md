# MuxRuby::CreateLiveStreamRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**playback_policy** | [**Array&lt;PlaybackPolicy&gt;**](PlaybackPolicy.md) |  | [optional] 
**new_asset_settings** | [**CreateAssetRequest**](CreateAssetRequest.md) |  | [optional] 
**reconnect_window** | **Float** | When live streaming software disconnects from Mux, either intentionally or due to a drop in the network, the Reconnect Window is the time in seconds that Mux should wait for the streaming software to reconnect before considering the live stream finished and completing the recorded asset. Defaults to 60 seconds on the API if not specified. | [optional] 
**passthrough** | **String** |  | [optional] 
**reduced_latency** | **BOOLEAN** | Latency is the time from when the streamer does something in real life to when you see it happen in the player. Set this if you want lower latency for your live stream. Note: Reconnect windows are incompatible with Reduced Latency and will always be set to zero (0) seconds. Read more here: https://mux.com/blog/reduced-latency-for-mux-live-streaming-now-available/ | [optional] 
**test** | **BOOLEAN** |  | [optional] 


