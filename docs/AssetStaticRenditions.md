# MuxRuby::AssetStaticRenditions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Indicates the status of downloadable MP4 versions of this asset. | [optional][default to &#39;disabled&#39;] |
| **files** | [**Array&lt;AssetStaticRenditionsFiles&gt;**](AssetStaticRenditionsFiles.md) | Array of file objects. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::AssetStaticRenditions.new(
  status: null,
  files: null
)
```

