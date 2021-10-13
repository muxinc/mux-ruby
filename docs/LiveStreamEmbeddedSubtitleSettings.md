# MuxRuby::LiveStreamEmbeddedSubtitleSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name for this live stream subtitle track. | [optional] |
| **passthrough** | **String** | Arbitrary metadata set for the live stream subtitle track. Max 255 characters. | [optional] |
| **language_code** | **String** | The language of the subtitle stream. Value must be BCP 47 compliant. | [optional][default to &#39;en&#39;] |
| **language_channel** | **String** | CEA-608 caption channel to read data from. | [optional][default to &#39;cc1&#39;] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::LiveStreamEmbeddedSubtitleSettings.new(
  name: null,
  passthrough: null,
  language_code: null,
  language_channel: null
)
```

