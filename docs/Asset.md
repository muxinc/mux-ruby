# MuxRuby::Asset

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the Asset. | [optional] |
| **created_at** | **String** | Time at which the object was created. Measured in seconds since the Unix epoch. | [optional] |
| **deleted_at** | **String** |  | [optional] |
| **status** | **String** | The status of the asset. | [optional] |
| **duration** | **Float** | The duration of the asset in seconds (max duration for a single asset is 24 hours). | [optional] |
| **max_stored_resolution** | **String** | The maximum resolution that has been stored for the asset. The asset may be delivered at lower resolutions depending on the device and bandwidth, however it cannot be delivered at a higher value than is stored. | [optional] |
| **max_stored_frame_rate** | **Float** | The maximum frame rate that has been stored for the asset. The asset may be delivered at lower frame rates depending on the device and bandwidth, however it cannot be delivered at a higher value than is stored. This field may return -1 if the frame rate of the input cannot be reliably determined.  | [optional] |
| **aspect_ratio** | **String** | The aspect ratio of the asset in the form of &#x60;width:height&#x60;, for example &#x60;16:9&#x60;. | [optional] |
| **playback_ids** | [**Array&lt;PlaybackID&gt;**](PlaybackID.md) |  | [optional] |
| **tracks** | [**Array&lt;Track&gt;**](Track.md) |  | [optional] |
| **errors** | [**AssetErrors**](AssetErrors.md) |  | [optional] |
| **per_title_encode** | **Boolean** |  | [optional] |
| **is_live** | **Boolean** | Whether the asset is created from a live stream and the live stream is currently &#x60;active&#x60; and not in &#x60;idle&#x60; state. | [optional] |
| **passthrough** | **String** | Arbitrary metadata set for the asset. Max 255 characters. | [optional] |
| **live_stream_id** | **String** | Unique identifier for the live stream. This is an optional parameter added when the asset is created from a live stream. | [optional] |
| **master** | [**AssetMaster**](AssetMaster.md) |  | [optional] |
| **master_access** | **String** |  | [optional][default to &#39;none&#39;] |
| **mp4_support** | **String** |  | [optional][default to &#39;none&#39;] |
| **source_asset_id** | **String** | Asset Identifier of the video used as the source for creating the clip. | [optional] |
| **normalize_audio** | **Boolean** | Normalize the audio track loudness level. This parameter is only applicable to on-demand (not live) assets. | [optional][default to false] |
| **static_renditions** | [**AssetStaticRenditions**](AssetStaticRenditions.md) |  | [optional] |
| **recording_times** | [**Array&lt;AssetRecordingTimes&gt;**](AssetRecordingTimes.md) | An array of individual live stream recording sessions. A recording session is created on each encoder connection during the live stream | [optional] |
| **non_standard_input_reasons** | [**AssetNonStandardInputReasons**](AssetNonStandardInputReasons.md) |  | [optional] |
| **test** | **Boolean** | Indicates this asset is a test asset if the value is &#x60;true&#x60;. A Test asset can help evaluate the Mux Video APIs without incurring any cost. There is no limit on number of test assets created. Test assets are watermarked with the Mux logo, limited to 10 seconds, and deleted after 24 hrs. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::Asset.new(
  id: null,
  created_at: null,
  deleted_at: null,
  status: null,
  duration: null,
  max_stored_resolution: null,
  max_stored_frame_rate: null,
  aspect_ratio: null,
  playback_ids: null,
  tracks: null,
  errors: null,
  per_title_encode: null,
  is_live: null,
  passthrough: null,
  live_stream_id: null,
  master: null,
  master_access: null,
  mp4_support: null,
  source_asset_id: null,
  normalize_audio: null,
  static_renditions: null,
  recording_times: null,
  non_standard_input_reasons: null,
  test: null
)
```

