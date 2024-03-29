# MuxRuby::LiveStreamEmbeddedSubtitleSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name for this live stream closed caption track. | [optional] |
| **passthrough** | **String** | Arbitrary user-supplied metadata set for the live stream closed caption track. Max 255 characters. | [optional] |
| **language_code** | **String** | The language of the closed caption stream. Value must be BCP 47 compliant. | [optional][default to &#39;en&#39;] |
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

