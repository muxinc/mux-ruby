# MuxRuby::GetMonitoringBreakdownResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;MonitoringBreakdownValue&gt;**](MonitoringBreakdownValue.md) |  | [optional] |
| **total_row_count** | **Integer** |  | [optional] |
| **timeframe** | **Array&lt;Integer&gt;** |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::GetMonitoringBreakdownResponse.new(
  data: null,
  total_row_count: null,
  timeframe: null
)
```

