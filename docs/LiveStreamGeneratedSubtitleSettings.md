# MuxRuby::LiveStreamGeneratedSubtitleSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name for this live stream subtitle track. | [optional] |
| **passthrough** | **String** | Arbitrary metadata set for the live stream subtitle track. Max 255 characters. | [optional] |
| **language_code** | **String** | The language to generate subtitles in. | [optional][default to &#39;en&#39;] |
| **transcription_vocabulary_ids** | **Array&lt;String&gt;** | Unique identifiers for existing Transcription Vocabularies to use while generating subtitles for the live stream. If the Transcription Vocabularies provided collectively have more than 1000 phrases, only the first 1000 phrases will be included. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::LiveStreamGeneratedSubtitleSettings.new(
  name: null,
  passthrough: null,
  language_code: null,
  transcription_vocabulary_ids: null
)
```

