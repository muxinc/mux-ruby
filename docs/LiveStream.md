# MuxRuby::LiveStream

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **stream_key** | **String** |  | [optional] |
| **active_asset_id** | **String** |  | [optional] |
| **recent_asset_ids** | **Array&lt;String&gt;** |  | [optional] |
| **status** | **String** |  | [optional] |
| **playback_ids** | [**Array&lt;PlaybackID&gt;**](PlaybackID.md) |  | [optional] |
| **new_asset_settings** | [**CreateAssetRequest**](CreateAssetRequest.md) |  | [optional] |
| **passthrough** | **String** |  | [optional] |
| **reconnect_window** | **Float** |  | [optional] |
| **reduced_latency** | **Boolean** |  | [optional] |
| **simulcast_targets** | [**Array&lt;SimulcastTarget&gt;**](SimulcastTarget.md) |  | [optional] |
| **test** | **Boolean** |  | [optional] |

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
  reconnect_window: null,
  reduced_latency: null,
  simulcast_targets: null,
  test: null
)
```

