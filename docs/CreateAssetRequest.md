# MuxRuby::CreateAssetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **input** | [**Array&lt;InputSettings&gt;**](InputSettings.md) | Deprecated. Use &#x60;inputs&#x60; instead, which accepts an identical type. | [optional] |
| **inputs** | [**Array&lt;InputSettings&gt;**](InputSettings.md) | An array of objects that each describe an input file to be used to create the asset. As a shortcut, input can also be a string URL for a file when only one input file is used. See &#x60;input[].url&#x60; for requirements. | [optional] |
| **playback_policy** | [**Array&lt;PlaybackPolicy&gt;**](PlaybackPolicy.md) | Deprecated. Use &#x60;playback_policies&#x60; instead, which accepts an identical type. | [optional] |
| **playback_policies** | [**Array&lt;PlaybackPolicy&gt;**](PlaybackPolicy.md) | An array of playback policy names that you want applied to this asset and available through &#x60;playback_ids&#x60;. Options include:  * &#x60;\&quot;public\&quot;&#x60; (anyone with the playback URL can stream the asset). * &#x60;\&quot;signed\&quot;&#x60; (an additional access token is required to play the asset).  If no &#x60;playback_policies&#x60; are set, the asset will have no playback IDs and will therefore not be playable. For simplicity, a single string name can be used in place of the array in the case of only one playback policy.  | [optional] |
| **advanced_playback_policies** | [**Array&lt;CreatePlaybackIDRequest&gt;**](CreatePlaybackIDRequest.md) | An array of playback policy objects that you want applied to this asset and available through &#x60;playback_ids&#x60;. &#x60;advanced_playback_policies&#x60; must be used instead of &#x60;playback_policies&#x60; when creating a DRM playback ID.  | [optional] |
| **per_title_encode** | **Boolean** |  | [optional] |
| **passthrough** | **String** | You can set this field to anything you want. It will be included in the asset details and related webhooks. If you&#39;re looking for more structured metadata, such as &#x60;title&#x60; or &#x60;external_id&#x60;, you can use the &#x60;meta&#x60; object instead. **Max: 255 characters**. | [optional] |
| **mp4_support** | **String** | Deprecated. See the [Static Renditions API](https://www.mux.com/docs/guides/enable-static-mp4-renditions) for the updated API.  Specify what level of support for mp4 playback. You may not enable both &#x60;mp4_support&#x60; and  &#x60;static_renditions&#x60;.  * The &#x60;capped-1080p&#x60; option produces a single MP4 file, called &#x60;capped-1080p.mp4&#x60;, with the video resolution capped at 1080p. This option produces an &#x60;audio.m4a&#x60; file for an audio-only asset. * The &#x60;audio-only&#x60; option produces a single M4A file, called &#x60;audio.m4a&#x60; for a video or an audio-only asset. MP4 generation will error when this option is specified for a video-only asset. * The &#x60;audio-only,capped-1080p&#x60; option produces both the &#x60;audio.m4a&#x60; and &#x60;capped-1080p.mp4&#x60; files. Only the &#x60;capped-1080p.mp4&#x60; file is produced for a video-only asset, while only the &#x60;audio.m4a&#x60; file is produced for an audio-only asset.  The &#x60;standard&#x60;(deprecated) option produces up to three MP4 files with different levels of resolution (&#x60;high.mp4&#x60;, &#x60;medium.mp4&#x60;, &#x60;low.mp4&#x60;, or &#x60;audio.m4a&#x60; for an audio-only asset).  MP4 files are not produced for &#x60;none&#x60; (default).  In most cases you should use our default HLS-based streaming playback (&#x60;{playback_id}.m3u8&#x60;) which can automatically adjust to viewers&#39; connection speeds, but an mp4 can be useful for some legacy devices or downloading for offline playback. See the [Download your videos guide](https://docs.mux.com/guides/enable-static-mp4-renditions) for more information.  | [optional] |
| **normalize_audio** | **Boolean** | Normalize the audio track loudness level. This parameter is only applicable to on-demand (not live) assets. | [optional][default to false] |
| **master_access** | **String** | Specify what level (if any) of support for master access. Master access can be enabled temporarily for your asset to be downloaded. See the [Download your videos guide](https://docs.mux.com/guides/enable-static-mp4-renditions) for more information. | [optional] |
| **test** | **Boolean** | Marks the asset as a test asset when the value is set to true. A Test asset can help evaluate the Mux Video APIs without incurring any cost. There is no limit on number of test assets created. Test asset are watermarked with the Mux logo, limited to 10 seconds, deleted after 24 hrs. | [optional] |
| **max_resolution_tier** | **String** | Max resolution tier can be used to control the maximum &#x60;resolution_tier&#x60; your asset is encoded, stored, and streamed at. If not set, this defaults to &#x60;1080p&#x60;. | [optional] |
| **encoding_tier** | **String** | This field is deprecated. Please use &#x60;video_quality&#x60; instead. The encoding tier informs the cost, quality, and available platform features for the asset. The default encoding tier for an account can be set in the Mux Dashboard. [See the video quality guide for more details.](https://docs.mux.com/guides/use-video-quality-levels) | [optional] |
| **video_quality** | **String** | The video quality controls the cost, quality, and available platform features for the asset. The default video quality for an account can be set in the Mux Dashboard. This field replaces the deprecated &#x60;encoding_tier&#x60; value. [See the video quality guide for more details.](https://docs.mux.com/guides/use-video-quality-levels) | [optional] |
| **static_renditions** | [**Array&lt;CreateStaticRenditionRequest&gt;**](CreateStaticRenditionRequest.md) | An array of static renditions to create for this asset. You may not enable both &#x60;static_renditions&#x60; and &#x60;mp4_support (the latter being deprecated)&#x60; | [optional] |
| **meta** | [**AssetMetadata**](AssetMetadata.md) |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::CreateAssetRequest.new(
  input: null,
  inputs: null,
  playback_policy: null,
  playback_policies: null,
  advanced_playback_policies: null,
  per_title_encode: null,
  passthrough: null,
  mp4_support: null,
  normalize_audio: null,
  master_access: null,
  test: null,
  max_resolution_tier: null,
  encoding_tier: null,
  video_quality: null,
  static_renditions: null,
  meta: null
)
```

