# MuxRuby::CreateUploadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timeout** | **Integer** | Max time in seconds for the signed upload URL to be valid. If a successful upload has not occurred before the timeout limit, the direct upload is marked &#x60;timed_out&#x60; | [optional][default to 3600] |
| **cors_origin** | **String** | If the upload URL will be used in a browser, you must specify the origin in order for the signed URL to have the correct CORS headers. | [optional] |
| **new_asset_settings** | [**CreateAssetRequest**](CreateAssetRequest.md) |  | [optional] |
| **test** | **Boolean** | Indicates if this is a test Direct Upload, in which case the Asset that gets created will be a &#x60;test&#x60; Asset. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::CreateUploadRequest.new(
  timeout: null,
  cors_origin: null,
  new_asset_settings: null,
  test: null
)
```

