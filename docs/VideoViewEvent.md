# MuxRuby::VideoViewEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **viewer_time** | **Integer** |  | [optional] |
| **playback_time** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **event_time** | **Integer** |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::VideoViewEvent.new(
  viewer_time: null,
  playback_time: null,
  name: null,
  event_time: null
)
```

