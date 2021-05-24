# MuxRuby::AssetErrors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of error that occurred for this asset. | [optional] |
| **messages** | **Array&lt;String&gt;** | Error messages with more details. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::AssetErrors.new(
  type: null,
  messages: null
)
```

