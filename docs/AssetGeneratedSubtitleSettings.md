# MuxRuby::AssetGeneratedSubtitleSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name for this subtitle track. | [optional] |
| **passthrough** | **String** | Arbitrary metadata set for the subtitle track. Max 255 characters. | [optional] |
| **language_code** | **String** | The language to generate subtitles in. | [optional][default to &#39;en&#39;] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::AssetGeneratedSubtitleSettings.new(
  name: null,
  passthrough: null,
  language_code: null
)
```

