# MuxRuby::CreatePlaybackRestrictionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **referrer** | [**ReferrerDomainRestriction**](ReferrerDomainRestriction.md) |  | [optional] |
| **user_agent** | [**UserAgentRestrictionRequest**](UserAgentRestrictionRequest.md) |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::CreatePlaybackRestrictionRequest.new(
  referrer: null,
  user_agent: null
)
```

