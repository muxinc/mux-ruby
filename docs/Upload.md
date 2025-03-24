# MuxRuby::Upload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the Direct Upload. | [optional] |
| **timeout** | **Integer** | Max time in seconds for the signed upload URL to be valid. If a successful upload has not occurred before the timeout limit, the direct upload is marked &#x60;timed_out&#x60; | [optional][default to 3600] |
| **status** | **String** |  | [optional] |
| **new_asset_settings** | [**CreateAssetRequest**](CreateAssetRequest.md) |  | [optional] |
| **asset_id** | **String** | Only set once the upload is in the &#x60;asset_created&#x60; state. | [optional] |
| **error** | [**UploadError**](UploadError.md) |  | [optional] |
| **cors_origin** | **String** | If the upload URL will be used in a browser, you must specify the origin in order for the signed URL to have the correct CORS headers. | [optional] |
| **url** | **String** | The URL to upload the associated source media to. | [optional] |
| **test** | **Boolean** | Indicates if this is a test Direct Upload, in which case the Asset that gets created will be a &#x60;test&#x60; Asset. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::Upload.new(
  id: null,
  timeout: null,
  status: null,
  new_asset_settings: null,
  asset_id: null,
  error: null,
  cors_origin: null,
  url: null,
  test: null
)
```

