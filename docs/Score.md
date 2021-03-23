# MuxRuby::Score

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **watch_time** | **Integer** |  | [optional] |
| **view_count** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **metric** | **String** |  | [optional] |
| **items** | [**Array&lt;Metric&gt;**](Metric.md) |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::Score.new(
  watch_time: null,
  view_count: null,
  name: null,
  value: null,
  metric: null,
  items: null
)
```

