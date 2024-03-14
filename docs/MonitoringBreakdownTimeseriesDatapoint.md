# MuxRuby::MonitoringBreakdownTimeseriesDatapoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** |  | [optional] |
| **metric_value** | **Float** |  | [optional] |
| **concurrent_viewers** | **Integer** |  | [optional] |
| **starting_up_viewers** | **Integer** |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::MonitoringBreakdownTimeseriesDatapoint.new(
  value: null,
  metric_value: null,
  concurrent_viewers: null,
  starting_up_viewers: null
)
```

