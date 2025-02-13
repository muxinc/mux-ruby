# MuxRuby::StaticRendition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the static rendition file | [optional] |
| **ext** | **String** | Extension of the static rendition file | [optional] |
| **height** | **Integer** | The height of the static rendition&#39;s file in pixels | [optional] |
| **width** | **Integer** | The width of the static rendition&#39;s file in pixels | [optional] |
| **bitrate** | **Integer** | The bitrate in bits per second | [optional] |
| **filesize** | **String** | The file size in bytes | [optional] |
| **type** | **String** | Indicates the static rendition type of this specific MP4 version of this asset. This field is only valid for &#x60;static_renditions&#x60;, not for &#x60;mp4_support&#x60;. | [optional] |
| **status** | **String** | Indicates the status of this specific MP4 version of this asset. This field is only valid for &#x60;static_renditions&#x60;, not for &#x60;mp4_support&#x60;. * &#x60;ready&#x60; indicates the MP4 has been generated and is ready for download * &#x60;preparing&#x60; indicates the asset has not been ingested or the static rendition is still being generated after an asset is ready * &#x60;skipped&#x60; indicates the static rendition will not be generated because the requested resolution conflicts with the asset attributes after the asset has been ingested * &#x60;errored&#x60; indicates the static rendition cannot be generated. For example, an asset could not be ingested  | [optional] |
| **resolution_tier** | **String** | Indicates the resolution tier of this specific MP4 version of this asset. This field is only valid for &#x60;static_renditions&#x60;, not for &#x60;mp4_support&#x60;. | [optional] |
| **resolution** | **String** | Indicates the resolution of this specific MP4 version of this asset. This field is only valid for &#x60;static_renditions&#x60;, not for &#x60;mp4_support&#x60;. | [optional] |
| **id** | **String** | The ID of this static rendition, used in managing this static rendition. This field is only valid for &#x60;static_renditions&#x60;, not for &#x60;mp4_support&#x60;. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::StaticRendition.new(
  name: null,
  ext: null,
  height: null,
  width: null,
  bitrate: null,
  filesize: null,
  type: null,
  status: null,
  resolution_tier: null,
  resolution: null,
  id: null
)
```

