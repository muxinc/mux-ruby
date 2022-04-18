# MuxRuby::UpdateReferrerDomainRestrictionRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'mux_ruby'

MuxRuby::UpdateReferrerDomainRestrictionRequest.openapi_one_of
# =>
# [
#   :'ReferrerDomainRestriction'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'mux_ruby'

MuxRuby::UpdateReferrerDomainRestrictionRequest.build(data)
# => #<ReferrerDomainRestriction:0x00007fdd4aab02a0>

MuxRuby::UpdateReferrerDomainRestrictionRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ReferrerDomainRestriction`
- `nil` (if no type matches)

