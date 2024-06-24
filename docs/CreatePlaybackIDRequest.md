# MuxRuby::CreatePlaybackIDRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy** | [**PlaybackPolicy**](PlaybackPolicy.md) |  | [optional] |
| **drm_configuration_id** | **String** | The DRM configuration used by this playback ID. Must only be set when &#x60;policy&#x60; is set to &#x60;drm&#x60;. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::CreatePlaybackIDRequest.new(
  policy: null,
  drm_configuration_id: null
)
```

