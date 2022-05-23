# MuxRuby::Broadcast

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the broadcast. Max 255 characters. |  |
| **passthrough** | **String** | Arbitrary user-supplied metadata that will be included in the broadcast details and related webhooks. Max: 255 characters. | [optional] |
| **live_stream_id** | **String** | The ID of the live stream that the broadcast will be sent to. |  |
| **status** | [**BroadcastStatus**](BroadcastStatus.md) |  |  |
| **layout** | [**BroadcastLayout**](BroadcastLayout.md) |  | [default to &#39;gallery&#39;] |
| **background** | **String** | URL of an image to display as the background of the broadcast. Its dimensions should match the provided resolution. | [optional] |
| **resolution** | [**BroadcastResolution**](BroadcastResolution.md) |  | [default to &#39;1920x1080&#39;] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::Broadcast.new(
  id: null,
  passthrough: null,
  live_stream_id: null,
  status: null,
  layout: null,
  background: null,
  resolution: null
)
```

