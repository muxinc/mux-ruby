# MuxRuby::AssetMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The asset title. Max 512 code points. | [optional] |
| **creator_id** | **String** | This is an identifier you provide to keep track of the creator of the asset. Max 128 code points. | [optional] |
| **external_id** | **String** | This is an identifier you provide to link the asset to your own data. Max 128 code points. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::AssetMetadata.new(
  title: null,
  creator_id: null,
  external_id: null
)
```

