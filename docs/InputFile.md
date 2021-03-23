# MuxRuby::InputFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **container_format** | **String** |  | [optional] |
| **tracks** | [**Array&lt;InputTrack&gt;**](InputTrack.md) |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::InputFile.new(
  container_format: null,
  tracks: null
)
```

