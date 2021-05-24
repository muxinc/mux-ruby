# MuxRuby::AssetStaticRenditionsFiles

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **ext** | **String** | Extension of the static rendition file | [optional] |
| **height** | **Integer** | The height of the static rendition&#39;s file in pixels | [optional] |
| **width** | **Integer** | The width of the static rendition&#39;s file in pixels | [optional] |
| **bitrate** | **Integer** | The bitrate in bits per second | [optional] |
| **filesize** | **String** | The file size in bytes | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::AssetStaticRenditionsFiles.new(
  name: null,
  ext: null,
  height: null,
  width: null,
  bitrate: null,
  filesize: null
)
```

