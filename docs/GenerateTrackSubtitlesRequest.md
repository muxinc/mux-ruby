# MuxRuby::GenerateTrackSubtitlesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generated_subtitles** | [**Array&lt;AssetGeneratedSubtitleSettings&gt;**](AssetGeneratedSubtitleSettings.md) | Generate subtitle tracks using automatic speech recognition with this configuration. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::GenerateTrackSubtitlesRequest.new(
  generated_subtitles: null
)
```

