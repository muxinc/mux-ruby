# MuxRuby::DeliveryReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | Unique identifier for the live stream that created the asset. | [optional] |
| **asset_id** | **String** | Unique identifier for the asset. | [optional] |
| **passthrough** | **String** | The &#x60;passthrough&#x60; value for the asset. | [optional] |
| **created_at** | **String** | Time at which the asset was created. Measured in seconds since the Unix epoch. | [optional] |
| **deleted_at** | **String** | If exists, time at which the asset was deleted. Measured in seconds since the Unix epoch. | [optional] |
| **asset_state** | **String** | The state of the asset. | [optional] |
| **asset_duration** | **Float** | The duration of the asset in seconds. | [optional] |
| **asset_resolution_tier** | **String** | The resolution tier that the asset was ingested at, affecting billing for ingest &amp; storage | [optional] |
| **delivered_seconds** | **Float** | Total number of delivered seconds during this time window. | [optional] |
| **delivered_seconds_by_resolution** | [**DeliveryReportDeliveredSecondsByResolution**](DeliveryReportDeliveredSecondsByResolution.md) |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::DeliveryReport.new(
  live_stream_id: null,
  asset_id: null,
  passthrough: null,
  created_at: null,
  deleted_at: null,
  asset_state: null,
  asset_duration: null,
  asset_resolution_tier: null,
  delivered_seconds: null,
  delivered_seconds_by_resolution: null
)
```

