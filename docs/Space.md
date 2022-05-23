# MuxRuby::Space

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the space. Max 255 characters. |  |
| **created_at** | **String** | Time the space was created, defined as a Unix timestamp (seconds since epoch). |  |
| **type** | [**SpaceType**](SpaceType.md) |  | [default to &#39;server&#39;] |
| **status** | [**SpaceStatus**](SpaceStatus.md) |  |  |
| **passthrough** | **String** | Arbitrary user-supplied metadata that will be included in the space details and related webhooks. Max: 255 characters. | [optional] |
| **broadcasts** | [**Array&lt;Broadcast&gt;**](Broadcast.md) | An array of broadcast destinations. | [optional] |
| **active_session_id** | **String** | Unique identifier for the current lifecycle of the space. Only set when the space is &#x60;active&#x60; and is set to a new value each time the space transitions from &#x60;idle&#x60; to &#x60;active&#x60;. This value is useful for logging and debugging issues. Max 255 characters. | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::Space.new(
  id: null,
  created_at: null,
  type: null,
  status: null,
  passthrough: null,
  broadcasts: null,
  active_session_id: null
)
```

