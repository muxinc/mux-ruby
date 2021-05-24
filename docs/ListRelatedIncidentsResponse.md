# MuxRuby::ListRelatedIncidentsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Incident&gt;**](Incident.md) |  | [optional] |
| **total_row_count** | **Integer** |  | [optional] |
| **timeframe** | **Array&lt;Integer&gt;** |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::ListRelatedIncidentsResponse.new(
  data: null,
  total_row_count: null,
  timeframe: null
)
```

