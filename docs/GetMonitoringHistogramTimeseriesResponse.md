# MuxRuby::GetMonitoringHistogramTimeseriesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**GetMonitoringHistogramTimeseriesResponseMeta**](GetMonitoringHistogramTimeseriesResponseMeta.md) |  | [optional] |
| **data** | [**Array&lt;MonitoringHistogramTimeseriesDatapoint&gt;**](MonitoringHistogramTimeseriesDatapoint.md) |  | [optional] |
| **total_row_count** | **Integer** |  | [optional] |
| **timeframe** | **Array&lt;Integer&gt;** |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::GetMonitoringHistogramTimeseriesResponse.new(
  meta: null,
  data: null,
  total_row_count: null,
  timeframe: null
)
```

