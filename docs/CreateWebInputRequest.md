# MuxRuby::CreateWebInputRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the Web Input. | [optional] |
| **created_at** | **String** | Time the Web Input was created, defined as a Unix timestamp (seconds since epoch). | [optional] |
| **url** | **String** | The URL for the Web Input to load. | [optional] |
| **auto_launch** | **Boolean** | When set to &#x60;true&#x60; the Web Input will automatically launch and start streaming immediately after creation | [optional] |
| **live_stream_id** | **String** | The Live Stream ID to broadcast this Web Input to | [optional] |
| **status** | **String** |  | [optional] |
| **passthrough** | **String** | Arbitrary metadata that will be included in the Web Input details and related webhooks. Can be used to store your own ID for the Web Input. **Max: 255 characters**. | [optional] |
| **resolution** | **String** | The resolution of the viewport of the Web Input&#39;s browser instance. Defaults to 1920x1080 if not set. | [optional][default to &#39;1920x1080&#39;] |
| **timeout** | **Integer** | The number of seconds that the Web Input should stream for before automatically shutting down. | [optional][default to 3600] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::CreateWebInputRequest.new(
  id: null,
  created_at: null,
  url: null,
  auto_launch: null,
  live_stream_id: null,
  status: null,
  passthrough: null,
  resolution: null,
  timeout: null
)
```

