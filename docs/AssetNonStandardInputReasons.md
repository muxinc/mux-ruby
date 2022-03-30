# MuxRuby::AssetNonStandardInputReasons

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_codec** | **String** | The video codec used on the input file. For example, the input file encoded with &#x60;hevc&#x60; video codec is non-standard and the value of this parameter is &#x60;hevc&#x60;. | [optional] |
| **audio_codec** | **String** | The audio codec used on the input file. Non-AAC audio codecs are non-standard. | [optional] |
| **video_gop_size** | **String** | The video key frame Interval (also called as Group of Picture or GOP) of the input file is &#x60;high&#x60;. This parameter is present when the gop is greater than 20 seconds. | [optional] |
| **video_frame_rate** | **String** | The video frame rate of the input file. Video with average frames per second (fps) less than 5 or greater than 120 is non-standard. A &#x60;-1&#x60; frame rate value indicates Mux could not determine the frame rate of the video track. | [optional] |
| **video_resolution** | **String** | The video resolution of the input file. Video resolution higher than 2048 pixels on any one dimension (height or width) is considered non-standard, The resolution value is presented as &#x60;width&#x60; x &#x60;height&#x60; in pixels. | [optional] |
| **video_bitrate** | **String** | The video bitrate of the input file is &#x60;high&#x60;. This parameter is present when the average bitrate of any key frame interval (also known as Group of Pictures or GOP) is higher than what&#39;s considered standard which typically is 16 Mbps. | [optional] |
| **pixel_aspect_ratio** | **String** | The video pixel aspect ratio of the input file. | [optional] |
| **video_edit_list** | **String** | Video Edit List reason indicates that the input file&#39;s video track contains a complex Edit Decision List. | [optional] |
| **audio_edit_list** | **String** | Audio Edit List reason indicates that the input file&#39;s audio track contains a complex Edit Decision List. | [optional] |
| **unexpected_media_file_parameters** | **String** | A catch-all reason when the input file in created with non-standard encoding parameters. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::AssetNonStandardInputReasons.new(
  video_codec: null,
  audio_codec: null,
  video_gop_size: null,
  video_frame_rate: null,
  video_resolution: null,
  video_bitrate: null,
  pixel_aspect_ratio: null,
  video_edit_list: null,
  audio_edit_list: null,
  unexpected_media_file_parameters: null
)
```

