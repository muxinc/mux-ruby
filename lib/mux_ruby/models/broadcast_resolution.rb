=begin
#Mux API

#Mux is how developers build online video. This API encompasses both Mux Video and Mux Data functionality to help you build your video-related projects better and faster than ever before.

The version of the OpenAPI document: v1
Contact: devex@mux.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'date'
require 'time'

module MuxRuby
  class BroadcastResolution
    N1920X1080 = "1920x1080".freeze
    N1280X720 = "1280x720".freeze
    N1080X1920 = "1080x1920".freeze
    N720X1280 = "720x1280".freeze
    N1080X1080 = "1080x1080".freeze
    N720X720 = "720x720".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = BroadcastResolution.constants.select { |c| BroadcastResolution::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #BroadcastResolution" if constantValues.empty?
      value
    end
  end
end