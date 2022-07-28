# MuxRuby::AssetRecordingTimes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **started_at** | **Time** | The time at which the recording for the live stream started. The time value is Unix epoch time represented in ISO 8601 format. | [optional] |
| **duration** | **Float** | The duration of the live stream recorded. The time value is in seconds. | [optional] |
| **type** | **String** | The type of media represented by the recording session, either &#x60;content&#x60; for normal stream content or &#x60;slate&#x60; for slate media inserted during stream interruptions. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::AssetRecordingTimes.new(
  started_at: null,
  duration: null,
  type: null
)
```

