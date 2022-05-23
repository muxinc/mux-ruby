# MuxRuby::CreateBroadcastRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **passthrough** | **String** | Arbitrary user-supplied metadata that will be included in the broadcast details and related webhooks. Max: 255 characters. | [optional] |
| **live_stream_id** | **String** | The ID of the live stream that you want to broadcast to. |  |
| **layout** | [**BroadcastLayout**](BroadcastLayout.md) |  | [optional][default to &#39;gallery&#39;] |
| **background** | **String** | URL of an image to display as the background of the broadcast. Its dimensions should match the provided resolution. | [optional] |
| **resolution** | [**BroadcastResolution**](BroadcastResolution.md) |  | [optional][default to &#39;1920x1080&#39;] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::CreateBroadcastRequest.new(
  passthrough: null,
  live_stream_id: null,
  layout: null,
  background: null,
  resolution: null
)
```

