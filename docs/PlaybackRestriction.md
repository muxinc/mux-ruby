# MuxRuby::PlaybackRestriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the Playback Restriction. Max 255 characters. | [optional] |
| **created_at** | **String** | Time the Playback Restriction was created, defined as a Unix timestamp (seconds since epoch). | [optional] |
| **updated_at** | **String** | Time the Playback Restriction was last updated, defined as a Unix timestamp (seconds since epoch). | [optional] |
| **referrer** | [**ReferrerDomainRestriction**](ReferrerDomainRestriction.md) |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::PlaybackRestriction.new(
  id: null,
  created_at: null,
  updated_at: null,
  referrer: null
)
```

