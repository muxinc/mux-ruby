# MuxRuby::Asset

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**created_at** | **String** |  | [optional] 
**deleted_at** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**duration** | **Float** |  | [optional] 
**max_stored_resolution** | **String** |  | [optional] 
**max_stored_frame_rate** | **Float** |  | [optional] 
**aspect_ratio** | **String** |  | [optional] 
**playback_ids** | [**Array&lt;PlaybackID&gt;**](PlaybackID.md) |  | [optional] 
**tracks** | [**Array&lt;Track&gt;**](Track.md) |  | [optional] 
**errors** | [**AssetErrors**](AssetErrors.md) |  | [optional] 
**per_title_encode** | **BOOLEAN** |  | [optional] 
**is_live** | **BOOLEAN** |  | [optional] 
**passthrough** | **String** |  | [optional] 
**live_stream_id** | **String** |  | [optional] 
**master** | [**AssetMaster**](AssetMaster.md) |  | [optional] 
**master_access** | **String** |  | [optional] [default to &#39;none&#39;]
**mp4_support** | **String** |  | [optional] [default to &#39;none&#39;]
**normalize_audio** | **BOOLEAN** |  | [optional] [default to false]
**static_renditions** | [**AssetStaticRenditions**](AssetStaticRenditions.md) |  | [optional] 
**recording_times** | [**Array&lt;AssetRecordingTimes&gt;**](AssetRecordingTimes.md) | An array of individual live stream recording sessions. A recording session is created on each encoder connection during the live stream | [optional] 
**non_standard_input_reasons** | [**AssetNonStandardInputReasons**](AssetNonStandardInputReasons.md) |  | [optional] 
**test** | **BOOLEAN** |  | [optional] 


