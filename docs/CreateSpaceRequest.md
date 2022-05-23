# MuxRuby::CreateSpaceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**SpaceType**](SpaceType.md) |  | [optional][default to &#39;server&#39;] |
| **passthrough** | **String** | Arbitrary user-supplied metadata that will be included in the space details and related webhooks. Max: 255 characters. | [optional] |
| **broadcasts** | [**Array&lt;CreateBroadcastRequest&gt;**](CreateBroadcastRequest.md) | An array of broadcast destinations you want to stream the space to. **Note:** By default only a single broadcast destination can be specified. Contact Mux support if you need more. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::CreateSpaceRequest.new(
  type: null,
  passthrough: null,
  broadcasts: null
)
```

