# MuxRuby::DeliveryReportDeliveredSecondsByResolution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tier_1080p** | **Float** | Total number of delivered seconds during this time window that had a resolution larger than the 720p tier (over 921,600 pixels total). | [optional] |
| **tier_720p** | **Float** | Total number of delivered seconds during this time window that had a resolution within the 720p tier (up to 921,600 pixels total, based on typical 1280x720). | [optional] |
| **tier_audio_only** | **Float** | Total number of delivered seconds during this time window that had a resolution of audio only. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::DeliveryReportDeliveredSecondsByResolution.new(
  tier_1080p: null,
  tier_720p: null,
  tier_audio_only: null
)
```

