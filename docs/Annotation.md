# MuxRuby::Annotation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the annotation | [optional] |
| **note** | **String** | The annotation note content | [optional] |
| **date** | **Time** | Datetime when the annotation applies | [optional] |
| **sub_property_id** | **String** | Customer-defined sub-property identifier | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::Annotation.new(
  id: null,
  note: null,
  date: null,
  sub_property_id: null
)
```

