# MuxRuby::ListAssetsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_cursor** | **String** | If there are more pages of data, this field will contain a string that can be used with the &#x60;cursor&#x60; querystring parameter to fetch the next page of data. | [optional] |
| **data** | [**Array&lt;Asset&gt;**](Asset.md) |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::ListAssetsResponse.new(
  next_cursor: null,
  data: null
)
```

