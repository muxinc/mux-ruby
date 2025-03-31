# MuxRuby::UpdateReferrerDomainRestrictionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_domains** | **Array&lt;String&gt;** | List of domains allowed to play videos. Possible values are   * &#x60;[]&#x60; Empty Array indicates deny video playback requests for all domains   * &#x60;[\&quot;*\&quot;]&#x60; A Single Wildcard &#x60;*&#x60; entry means allow video playback requests from any domain   * &#x60;[\&quot;*.example.com\&quot;, \&quot;foo.com\&quot;]&#x60; A list of up to 10 domains or valid dns-style wildcards  | [optional] |
| **allow_no_referrer** | **Boolean** | A boolean to determine whether to allow or deny HTTP requests without &#x60;Referer&#x60; HTTP request header. Playback requests coming from non-web/native applications like iOS, Android or smart TVs will not have a &#x60;Referer&#x60; HTTP header. Set this value to &#x60;true&#x60; to allow these playback requests. | [optional][default to false] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::UpdateReferrerDomainRestrictionRequest.new(
  allowed_domains: null,
  allow_no_referrer: null
)
```

