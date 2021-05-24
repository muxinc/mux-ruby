# MuxRuby::ListDeliveryUsageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;DeliveryReport&gt;**](DeliveryReport.md) |  | [optional] |
| **total_row_count** | **Integer** |  | [optional] |
| **timeframe** | **Array&lt;Integer&gt;** |  | [optional] |
| **limit** | **Integer** | Number of assets returned in this response. Default value is 100. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::ListDeliveryUsageResponse.new(
  data: null,
  total_row_count: null,
  timeframe: null,
  limit: null
)
```

