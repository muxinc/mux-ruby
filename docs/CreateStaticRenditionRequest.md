# MuxRuby::CreateStaticRenditionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resolution** | **String** |  | [optional] |
| **passthrough** | **String** | Arbitrary user-supplied metadata set for the static rendition. Max 255 characters. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::CreateStaticRenditionRequest.new(
  resolution: null,
  passthrough: null
)
```

