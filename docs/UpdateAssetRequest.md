# MuxRuby::UpdateAssetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **passthrough** | **String** | You can set this field to anything you want. It will be included in the asset details and related webhooks. If you&#39;re looking for more structured metadata, such as &#x60;title&#x60; or &#x60;external_id&#x60; , you can use the &#x60;meta&#x60; object instead. **Max: 255 characters**. In order to clear this value, the field should be included with an empty string value. | [optional] |
| **meta** | [**AssetMetadata**](AssetMetadata.md) |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::UpdateAssetRequest.new(
  passthrough: null,
  meta: null
)
```

