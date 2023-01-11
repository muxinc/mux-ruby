# MuxRuby::MonitoringHistogramTimeseriesDatapoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **String** |  | [optional] |
| **sum** | **Integer** |  | [optional] |
| **p95** | **Float** |  | [optional] |
| **median** | **Float** |  | [optional] |
| **max_percentage** | **Float** |  | [optional] |
| **bucket_values** | [**Array&lt;MonitoringHistogramTimeseriesBucketValues&gt;**](MonitoringHistogramTimeseriesBucketValues.md) |  | [optional] |
| **average** | **Float** |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::MonitoringHistogramTimeseriesDatapoint.new(
  timestamp: null,
  sum: null,
  p95: null,
  median: null,
  max_percentage: null,
  bucket_values: null,
  average: null
)
```

