# MuxRuby::CreateLiveStreamRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **playback_policy** | [**Array&lt;PlaybackPolicy&gt;**](PlaybackPolicy.md) |  | [optional] |
| **new_asset_settings** | [**CreateAssetRequest**](CreateAssetRequest.md) |  | [optional] |
| **reconnect_window** | **Float** | When live streaming software disconnects from Mux, either intentionally or due to a drop in the network, the Reconnect Window is the time in seconds that Mux should wait for the streaming software to reconnect before considering the live stream finished and completing the recorded asset. Defaults to 60 seconds on the API if not specified. | [optional] |
| **passthrough** | **String** |  | [optional] |
| **audio_only** | **Boolean** | Force the live stream to only process the audio track when the value is set to true. Mux drops the video track if broadcasted. | [optional] |
| **reduced_latency** | **Boolean** | Latency is the time from when the streamer does something in real life to when you see it happen in the player. Set this if you want lower latency for your live stream. Note: Reconnect windows are incompatible with Reduced Latency and will always be set to zero (0) seconds. Read more here: https://mux.com/blog/reduced-latency-for-mux-live-streaming-now-available/ | [optional] |
| **test** | **Boolean** | Marks the live stream as a test live stream when the value is set to true. A test live stream can help evaluate the Mux Video APIs without incurring any cost. There is no limit on number of test live streams created. Test live streams are watermarked with the Mux logo and limited to 5 minutes. The test live stream is disabled after the stream is active for 5 mins and the recorded asset also deleted after 24 hours. | [optional] |
| **simulcast_targets** | [**Array&lt;CreateSimulcastTargetRequest&gt;**](CreateSimulcastTargetRequest.md) |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::CreateLiveStreamRequest.new(
  playback_policy: null,
  new_asset_settings: null,
  reconnect_window: null,
  passthrough: null,
  audio_only: null,
  reduced_latency: null,
  test: null,
  simulcast_targets: null
)
```

