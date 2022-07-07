# MuxRuby::TranscriptionVocabulary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the Transcription Vocabulary | [optional] |
| **name** | **String** | The user-supplied name of the Transcription Vocabulary. | [optional] |
| **phrases** | **Array&lt;String&gt;** | Phrases, individual words, or proper names to include in the Transcription Vocabulary. When the Transcription Vocabulary is attached to a live stream&#39;s &#x60;generated_subtitles&#x60; configuration, the probability of successful speech recognition for these words or phrases is boosted. | [optional] |
| **passthrough** | **String** | Arbitrary user-supplied metadata set for the Transcription Vocabulary. Max 255 characters. | [optional] |
| **created_at** | **String** | Time the Transcription Vocabulary was created, defined as a Unix timestamp (seconds since epoch). | [optional] |
| **updated_at** | **String** | Time the Transcription Vocabulary was updated, defined as a Unix timestamp (seconds since epoch). | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::TranscriptionVocabulary.new(
  id: null,
  name: null,
  phrases: null,
  passthrough: null,
  created_at: null,
  updated_at: null
)
```

