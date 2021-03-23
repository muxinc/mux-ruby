# MuxRuby::AssetRecordingTimes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **started_at** | **Time** | The time at which the recording for the live stream started. The time value is Unix epoch time represented in ISO 8601 format. | [optional] |
| **duration** | **Float** | The duration of the live stream recorded. The time value is in seconds. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::AssetRecordingTimes.new(
  started_at: null,
  duration: null
)
```

