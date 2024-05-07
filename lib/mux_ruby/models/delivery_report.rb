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
  class DeliveryReport
    # Unique identifier for the live stream that created the asset.
    attr_accessor :live_stream_id

    # Unique identifier for the asset.
    attr_accessor :asset_id

    # The `passthrough` value for the asset.
    attr_accessor :passthrough

    # Time at which the asset was created. Measured in seconds since the Unix epoch.
    attr_accessor :created_at

    # If exists, time at which the asset was deleted. Measured in seconds since the Unix epoch.
    attr_accessor :deleted_at

    # The state of the asset.
    attr_accessor :asset_state

    # The duration of the asset in seconds.
    attr_accessor :asset_duration

    # The resolution tier that the asset was ingested at, affecting billing for ingest & storage
    attr_accessor :asset_resolution_tier

    # The encoding tier that the asset was ingested at. [See the encoding tiers guide for more details.](https://docs.mux.com/guides/use-encoding-tiers)
    attr_accessor :asset_encoding_tier

    # Total number of delivered seconds during this time window.
    attr_accessor :delivered_seconds

    attr_accessor :delivered_seconds_by_resolution

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'live_stream_id' => :'live_stream_id',
        :'asset_id' => :'asset_id',
        :'passthrough' => :'passthrough',
        :'created_at' => :'created_at',
        :'deleted_at' => :'deleted_at',
        :'asset_state' => :'asset_state',
        :'asset_duration' => :'asset_duration',
        :'asset_resolution_tier' => :'asset_resolution_tier',
        :'asset_encoding_tier' => :'asset_encoding_tier',
        :'delivered_seconds' => :'delivered_seconds',
        :'delivered_seconds_by_resolution' => :'delivered_seconds_by_resolution'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'live_stream_id' => :'String',
        :'asset_id' => :'String',
        :'passthrough' => :'String',
        :'created_at' => :'String',
        :'deleted_at' => :'String',
        :'asset_state' => :'String',
        :'asset_duration' => :'Float',
        :'asset_resolution_tier' => :'String',
        :'asset_encoding_tier' => :'String',
        :'delivered_seconds' => :'Float',
        :'delivered_seconds_by_resolution' => :'DeliveryReportDeliveredSecondsByResolution'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MuxRuby::DeliveryReport` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MuxRuby::DeliveryReport`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'live_stream_id')
        self.live_stream_id = attributes[:'live_stream_id']
      end

      if attributes.key?(:'asset_id')
        self.asset_id = attributes[:'asset_id']
      end

      if attributes.key?(:'passthrough')
        self.passthrough = attributes[:'passthrough']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end

      if attributes.key?(:'asset_state')
        self.asset_state = attributes[:'asset_state']
      end

      if attributes.key?(:'asset_duration')
        self.asset_duration = attributes[:'asset_duration']
      end

      if attributes.key?(:'asset_resolution_tier')
        self.asset_resolution_tier = attributes[:'asset_resolution_tier']
      end

      if attributes.key?(:'asset_encoding_tier')
        self.asset_encoding_tier = attributes[:'asset_encoding_tier']
      end

      if attributes.key?(:'delivered_seconds')
        self.delivered_seconds = attributes[:'delivered_seconds']
      end

      if attributes.key?(:'delivered_seconds_by_resolution')
        self.delivered_seconds_by_resolution = attributes[:'delivered_seconds_by_resolution']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      asset_state_validator = EnumAttributeValidator.new('String', ["ready", "errored", "deleted"])
      return false unless asset_state_validator.valid?(@asset_state)
      asset_resolution_tier_validator = EnumAttributeValidator.new('String', ["audio-only", "720p", "1080p", "1440p", "2160p"])
      return false unless asset_resolution_tier_validator.valid?(@asset_resolution_tier)
      asset_encoding_tier_validator = EnumAttributeValidator.new('String', ["smart", "baseline"])
      return false unless asset_encoding_tier_validator.valid?(@asset_encoding_tier)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] asset_state Object to be assigned
    def asset_state=(asset_state)
      validator = EnumAttributeValidator.new('String', ["ready", "errored", "deleted"])
      unless validator.valid?(asset_state)
        fail ArgumentError, "invalid value for \"asset_state\", must be one of #{validator.allowable_values}."
      end
      @asset_state = asset_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] asset_resolution_tier Object to be assigned
    def asset_resolution_tier=(asset_resolution_tier)
      validator = EnumAttributeValidator.new('String', ["audio-only", "720p", "1080p", "1440p", "2160p"])
      unless validator.valid?(asset_resolution_tier)
        fail ArgumentError, "invalid value for \"asset_resolution_tier\", must be one of #{validator.allowable_values}."
      end
      @asset_resolution_tier = asset_resolution_tier
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] asset_encoding_tier Object to be assigned
    def asset_encoding_tier=(asset_encoding_tier)
      validator = EnumAttributeValidator.new('String', ["smart", "baseline"])
      unless validator.valid?(asset_encoding_tier)
        fail ArgumentError, "invalid value for \"asset_encoding_tier\", must be one of #{validator.allowable_values}."
      end
      @asset_encoding_tier = asset_encoding_tier
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          live_stream_id == o.live_stream_id &&
          asset_id == o.asset_id &&
          passthrough == o.passthrough &&
          created_at == o.created_at &&
          deleted_at == o.deleted_at &&
          asset_state == o.asset_state &&
          asset_duration == o.asset_duration &&
          asset_resolution_tier == o.asset_resolution_tier &&
          asset_encoding_tier == o.asset_encoding_tier &&
          delivered_seconds == o.delivered_seconds &&
          delivered_seconds_by_resolution == o.delivered_seconds_by_resolution
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [live_stream_id, asset_id, passthrough, created_at, deleted_at, asset_state, asset_duration, asset_resolution_tier, asset_encoding_tier, delivered_seconds, delivered_seconds_by_resolution].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = MuxRuby.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
