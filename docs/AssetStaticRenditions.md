# MuxRuby::AssetStaticRenditions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Indicates the status of downloadable MP4 versions of this asset. This field is only valid when &#x60;mp4_support&#x60; is enabled | [optional][default to &#39;disabled&#39;] |
| **files** | [**Array&lt;StaticRendition&gt;**](StaticRendition.md) | Array of file objects. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::AssetStaticRenditions.new(
  status: null,
  files: null
)
```

