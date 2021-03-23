# MuxRuby::DeliveryReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** |  | [optional] |
| **asset_id** | **String** |  | [optional] |
| **passthrough** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **asset_state** | **String** |  | [optional] |
| **asset_duration** | **Float** |  | [optional] |
| **delivered_seconds** | **Float** |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::DeliveryReport.new(
  live_stream_id: null,
  asset_id: null,
  passthrough: null,
  created_at: null,
  asset_state: null,
  asset_duration: null,
  delivered_seconds: null
)
```

