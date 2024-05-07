# MuxRuby::UpdateUserAgentRestrictionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_no_user_agent** | **Boolean** | Whether or not to allow views without a &#x60;User-Agent&#x60; HTTP request header. | [optional][default to true] |
| **allow_high_risk_user_agent** | **Boolean** | Whether or not to allow high risk user agents. The high risk user agents are defined by Mux. | [optional][default to true] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::UpdateUserAgentRestrictionRequest.new(
  allow_no_user_agent: null,
  allow_high_risk_user_agent: null
)
```

