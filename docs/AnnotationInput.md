# MuxRuby::AnnotationInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **note** | **String** | The annotation note content | [optional] |
| **date** | **Integer** | Datetime when the annotation applies (Unix timestamp) | [optional] |
| **sub_property_id** | **String** | Customer-defined sub-property identifier | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::AnnotationInput.new(
  note: null,
  date: null,
  sub_property_id: null
)
```

