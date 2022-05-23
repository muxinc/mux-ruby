# MuxRuby::CreateSimulcastTargetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **passthrough** | **String** | Arbitrary user-supplied metadata set by you when creating a simulcast target. | [optional] |
| **stream_key** | **String** | Stream Key represents a stream identifier on the third party live streaming service to send the parent live stream to. | [optional] |
| **url** | **String** | RTMP hostname including application name for the third party live streaming service. Example: &#x60;rtmp://live.example.com/app&#x60;. |  |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::CreateSimulcastTargetRequest.new(
  passthrough: null,
  stream_key: null,
  url: null
)
```

