# MuxRuby::GetRealTimeHistogramTimeseriesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**GetRealTimeHistogramTimeseriesResponseMeta**](GetRealTimeHistogramTimeseriesResponseMeta.md) |  | [optional] |
| **data** | [**Array&lt;RealTimeHistogramTimeseriesDatapoint&gt;**](RealTimeHistogramTimeseriesDatapoint.md) |  | [optional] |
| **total_row_count** | **Integer** |  | [optional] |
| **timeframe** | **Array&lt;Integer&gt;** |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::GetRealTimeHistogramTimeseriesResponse.new(
  meta: null,
  data: null,
  total_row_count: null,
  timeframe: null
)
```

