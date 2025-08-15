# MuxRuby::ListAnnotationsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Annotation&gt;**](Annotation.md) |  | [optional] |
| **total_row_count** | **Integer** | Total number of annotations available | [optional] |
| **timeframe** | **Array&lt;Integer&gt;** | Start and end unix timestamps for the data range | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::ListAnnotationsResponse.new(
  data: null,
  total_row_count: null,
  timeframe: null
)
```

