# MuxRuby::LiveStream

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the Live Stream. Max 255 characters. | [optional] |
| **created_at** | **String** | Time the Live Stream was created, defined as a Unix timestamp (seconds since epoch). | [optional] |
| **stream_key** | **String** | Unique key used for streaming to a Mux RTMP endpoint. This should be considered as sensitive as credentials, anyone with this stream key can begin streaming. | [optional] |
| **active_asset_id** | **String** | The Asset that is currently being created if there is an active broadcast. | [optional] |
| **recent_asset_ids** | **Array&lt;String&gt;** | An array of strings with the most recent Assets that were created from this live stream. | [optional] |
| **status** | **String** | &#x60;idle&#x60; indicates that there is no active broadcast. &#x60;active&#x60; indicates that there is an active broadcast and &#x60;disabled&#x60; status indicates that no future RTMP streams can be published. | [optional] |
| **playback_ids** | [**Array&lt;PlaybackID&gt;**](PlaybackID.md) | An array of Playback ID objects. Use these to create HLS playback URLs. See [Play your videos](https://docs.mux.com/guides/video/play-your-videos) for more details. | [optional] |
| **new_asset_settings** | [**CreateAssetRequest**](CreateAssetRequest.md) |  | [optional] |
| **passthrough** | **String** | Arbitrary metadata set for the asset. Max 255 characters. | [optional] |
| **audio_only** | **Boolean** | The live stream only processes the audio track if the value is set to true. Mux drops the video track if broadcasted. | [optional] |
| **reconnect_window** | **Float** | When live streaming software disconnects from Mux, either intentionally or due to a drop in the network, the Reconnect Window is the time in seconds that Mux should wait for the streaming software to reconnect before considering the live stream finished and completing the recorded asset. **Min**: 0.1s. **Max**: 300s (5 minutes). | [optional][default to 60] |
| **reduced_latency** | **Boolean** | Latency is the time from when the streamer does something in real life to when you see it happen in the player. Set this if you want lower latency for your live stream. **Note**: Reconnect windows are incompatible with Reduced Latency and will always be set to zero (0) seconds. See the [Reduce live stream latency guide](https://docs.mux.com/guides/video/reduce-live-stream-latency) to understand the tradeoffs. | [optional] |
| **low_latency** | **Boolean** | Latency is the time from when the streamer does something in real life to when you see it happen in the player. Setting this option will enable compatibility with the LL-HLS specification for low-latency streaming. This typically has lower latency than Reduced Latency streams, and cannot be combined with Reduced Latency. Note: Reconnect windows are incompatible with Low Latency and will always be set to zero (0) seconds. | [optional] |
| **simulcast_targets** | [**Array&lt;SimulcastTarget&gt;**](SimulcastTarget.md) | Each Simulcast Target contains configuration details to broadcast (or \&quot;restream\&quot;) a live stream to a third-party streaming service. [See the Stream live to 3rd party platforms guide](https://docs.mux.com/guides/video/stream-live-to-3rd-party-platforms). | [optional] |
| **test** | **Boolean** | True means this live stream is a test live stream. Test live streams can be used to help evaluate the Mux Video APIs for free. There is no limit on the number of test live streams, but they are watermarked with the Mux logo, and limited to 5 minutes. The test live stream is disabled after the stream is active for 5 mins and the recorded asset also deleted after 24 hours. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::LiveStream.new(
  id: null,
  created_at: null,
  stream_key: null,
  active_asset_id: null,
  recent_asset_ids: null,
  status: null,
  playback_ids: null,
  new_asset_settings: null,
  passthrough: null,
  audio_only: null,
  reconnect_window: null,
  reduced_latency: null,
  low_latency: null,
  simulcast_targets: null,
  test: null
)
```

