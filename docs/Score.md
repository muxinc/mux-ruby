# MuxRuby::Score

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **watch_time** | **Integer** |  | [optional] |
| **view_count** | **Integer** |  | [optional] |
| **unique_viewers** | **Integer** |  | [optional] |
| **started_views** | **Integer** |  | [optional] |
| **total_playing_time** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **ended_views** | **Integer** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **type** | **String** |  | [optional] |
| **metric** | **String** |  | [optional] |
| **items** | [**Array&lt;Metric&gt;**](Metric.md) |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::Score.new(
  watch_time: null,
  view_count: null,
  unique_viewers: null,
  started_views: null,
  total_playing_time: null,
  name: null,
  ended_views: null,
  value: null,
  type: null,
  metric: null,
  items: null
)
```

