# MuxRuby::AssetMaster

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **url** | **String** | The temporary URL to the master version of the video, as an MP4 file. This URL will expire after 24 hours. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::AssetMaster.new(
  status: null,
  url: null
)
```

