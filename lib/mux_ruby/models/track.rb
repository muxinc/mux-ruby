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
  class Track
    # Unique identifier for the Track
    attr_accessor :id

    # The type of track
    attr_accessor :type

    # The duration in seconds of the track media. This parameter is not set for the `text` type track. This field is optional and may not be set. The top level `duration` field of an asset will always be set.
    attr_accessor :duration

    # The maximum width in pixels available for the track. Only set for the `video` type track.
    attr_accessor :max_width

    # The maximum height in pixels available for the track. Only set for the `video` type track.
    attr_accessor :max_height

    # The maximum frame rate available for the track. Only set for the `video` type track. This field may return `-1` if the frame rate of the input cannot be reliably determined.
    attr_accessor :max_frame_rate

    # The maximum number of audio channels the track supports. Only set for the `audio` type track.
    attr_accessor :max_channels

    # Only set for the `audio` type track.
    attr_accessor :max_channel_layout

    # This parameter is set only for the `text` type track.
    attr_accessor :text_type

    # The language code value represents [BCP 47](https://tools.ietf.org/html/bcp47) specification compliant value. For example, `en` for English or `en-US` for the US version of English. This parameter is set for `text` type and `subtitles` text type track.
    attr_accessor :language_code

    # The name of the track containing a human-readable description. The hls manifest will associate a subtitle text track with this value. For example, the value is \"English\" for subtitles text track for the `language_code` value of `en-US`. This parameter is set for the `text` type and `subtitles` text type track.
    attr_accessor :name

    # Indicates the track provides Subtitles for the Deaf or Hard-of-hearing (SDH). This parameter is set for the `text` type and `subtitles` text type track.
    attr_accessor :closed_captions

    # Arbitrary user-supplied metadata set for the track either when creating the asset or track. This parameter is set for `text` type and `subtitles` text type track. Max 255 characters.
    attr_accessor :passthrough

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
        :'id' => :'id',
        :'type' => :'type',
        :'duration' => :'duration',
        :'max_width' => :'max_width',
        :'max_height' => :'max_height',
        :'max_frame_rate' => :'max_frame_rate',
        :'max_channels' => :'max_channels',
        :'max_channel_layout' => :'max_channel_layout',
        :'text_type' => :'text_type',
        :'language_code' => :'language_code',
        :'name' => :'name',
        :'closed_captions' => :'closed_captions',
        :'passthrough' => :'passthrough'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'type' => :'String',
        :'duration' => :'Float',
        :'max_width' => :'Integer',
        :'max_height' => :'Integer',
        :'max_frame_rate' => :'Float',
        :'max_channels' => :'Integer',
        :'max_channel_layout' => :'String',
        :'text_type' => :'String',
        :'language_code' => :'String',
        :'name' => :'String',
        :'closed_captions' => :'Boolean',
        :'passthrough' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MuxRuby::Track` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MuxRuby::Track`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'max_width')
        self.max_width = attributes[:'max_width']
      end

      if attributes.key?(:'max_height')
        self.max_height = attributes[:'max_height']
      end

      if attributes.key?(:'max_frame_rate')
        self.max_frame_rate = attributes[:'max_frame_rate']
      end

      if attributes.key?(:'max_channels')
        self.max_channels = attributes[:'max_channels']
      end

      if attributes.key?(:'max_channel_layout')
        self.max_channel_layout = attributes[:'max_channel_layout']
      end

      if attributes.key?(:'text_type')
        self.text_type = attributes[:'text_type']
      end

      if attributes.key?(:'language_code')
        self.language_code = attributes[:'language_code']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'closed_captions')
        self.closed_captions = attributes[:'closed_captions']
      end

      if attributes.key?(:'passthrough')
        self.passthrough = attributes[:'passthrough']
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
      type_validator = EnumAttributeValidator.new('String', ["video", "audio", "text"])
      return false unless type_validator.valid?(@type)
      text_type_validator = EnumAttributeValidator.new('String', ["subtitles"])
      return false unless text_type_validator.valid?(@text_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["video", "audio", "text"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] text_type Object to be assigned
    def text_type=(text_type)
      validator = EnumAttributeValidator.new('String', ["subtitles"])
      unless validator.valid?(text_type)
        fail ArgumentError, "invalid value for \"text_type\", must be one of #{validator.allowable_values}."
      end
      @text_type = text_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          duration == o.duration &&
          max_width == o.max_width &&
          max_height == o.max_height &&
          max_frame_rate == o.max_frame_rate &&
          max_channels == o.max_channels &&
          max_channel_layout == o.max_channel_layout &&
          text_type == o.text_type &&
          language_code == o.language_code &&
          name == o.name &&
          closed_captions == o.closed_captions &&
          passthrough == o.passthrough
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, type, duration, max_width, max_height, max_frame_rate, max_channels, max_channel_layout, text_type, language_code, name, closed_captions, passthrough].hash
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
