# MuxRuby::GetOverallValuesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**OverallValues**](OverallValues.md) |  | [optional] |
| **total_row_count** | **Integer** |  | [optional] |
| **timeframe** | **Array&lt;Integer&gt;** |  | [optional] |
| **meta** | [**ListBreakdownValuesResponseMeta**](ListBreakdownValuesResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::GetOverallValuesResponse.new(
  data: null,
  total_row_count: null,
  timeframe: null,
  meta: null
)
```

