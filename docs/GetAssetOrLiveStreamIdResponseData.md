# MuxRuby::GetAssetOrLiveStreamIdResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Playback ID used to retrieve the corresponding asset or the live stream ID | [optional] |
| **policy** | [**PlaybackPolicy**](PlaybackPolicy.md) |  | [optional] |
| **object** | [**GetAssetOrLiveStreamIdResponseDataObject**](GetAssetOrLiveStreamIdResponseDataObject.md) |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::GetAssetOrLiveStreamIdResponseData.new(
  id: null,
  policy: null,
  object: null
)
```

