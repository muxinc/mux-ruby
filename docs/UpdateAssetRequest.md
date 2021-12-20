# MuxRuby::UpdateAssetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **passthrough** | **String** | Arbitrary metadata set for the Asset. Max 255 characters. In order to clear this value, the field should be included with an empty string value. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::UpdateAssetRequest.new(
  passthrough: null
)
```

