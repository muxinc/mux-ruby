# MuxRuby::UpdateLiveStreamGeneratedSubtitlesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generated_subtitles** | [**Array&lt;LiveStreamGeneratedSubtitleSettings&gt;**](LiveStreamGeneratedSubtitleSettings.md) | Update automated speech recognition subtitle configuration for a live stream. At most one subtitle track is allowed. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::UpdateLiveStreamGeneratedSubtitlesRequest.new(
  generated_subtitles: null
)
```

