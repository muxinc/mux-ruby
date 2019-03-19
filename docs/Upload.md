# MuxRuby::Upload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**timeout** | **Integer** | Max time in seconds for the signed upload URL to be valid. If a successful upload has not occurred before the timeout limit, the direct upload is marked &#x60;timed_out&#x60; | [optional] [default to 3600]
**status** | **String** |  | [optional] 
**new_asset_settings** | [**Asset**](Asset.md) |  | [optional] 
**asset_id** | **String** | Only set once the upload is in the &#x60;asset_created&#x60; state. | [optional] 
**error** | [**UploadError**](UploadError.md) |  | [optional] 
**cors_origin** | **String** | If the upload URL will be used in a browser, you must specify the origin in order for the signed URL to have the correct CORS headers. | [optional] 
**url** | **String** | The URL to upload the associated source media to. | [optional] 


