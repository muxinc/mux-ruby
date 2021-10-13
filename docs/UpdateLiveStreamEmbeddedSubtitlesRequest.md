# MuxRuby::UpdateLiveStreamEmbeddedSubtitlesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **embedded_subtitles** | [**Array&lt;LiveStreamEmbeddedSubtitleSettings&gt;**](LiveStreamEmbeddedSubtitleSettings.md) | Describe the embedded subtitle contents of the incoming live stream. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::UpdateLiveStreamEmbeddedSubtitlesRequest.new(
  embedded_subtitles: null
)
```

