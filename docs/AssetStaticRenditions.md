# MuxRuby::AssetStaticRenditions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | * &#x60;ready&#x60;: All MP4s are downloadable * &#x60;preparing&#x60;: We are preparing the MP4s * &#x60;disabled&#x60;: MP4 support was not requested or has been removed * &#x60;errored&#x60;: There was a Mux internal error that prevented the MP4s from being created  | [optional] [default to &#39;disabled&#39;]
**files** | [**Array&lt;AssetStaticRenditionsFiles&gt;**](AssetStaticRenditionsFiles.md) |  | [optional] 


