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
  class StaticRendition
    # Name of the static rendition file
    attr_accessor :name

    # Extension of the static rendition file
    attr_accessor :ext

    # The height of the static rendition's file in pixels
    attr_accessor :height

    # The width of the static rendition's file in pixels
    attr_accessor :width

    # The bitrate in bits per second
    attr_accessor :bitrate

    # The file size in bytes
    attr_accessor :filesize

    # Indicates the static rendition type of this specific MP4 version of this asset. This field is only valid for `static_renditions`, not for `mp4_support`.
    attr_accessor :type

    # Indicates the status of this specific MP4 version of this asset. This field is only valid for `static_renditions`, not for `mp4_support`. * `ready` indicates the MP4 has been generated and is ready for download * `preparing` indicates the asset has not been ingested or the static rendition is still being generated after an asset is ready * `skipped` indicates the static rendition will not be generated because the requested resolution conflicts with the asset attributes after the asset has been ingested * `errored` indicates the static rendition cannot be generated. For example, an asset could not be ingested 
    attr_accessor :status

    # Indicates the resolution tier of this specific MP4 version of this asset. This field is only valid for `static_renditions`, not for `mp4_support`.
    attr_accessor :resolution_tier

    # Indicates the resolution of this specific MP4 version of this asset. This field is only valid for `static_renditions`, not for `mp4_support`.
    attr_accessor :resolution

    # The ID of this static rendition, used in managing this static rendition. This field is only valid for `static_renditions`, not for `mp4_support`.
    attr_accessor :id

    # Arbitrary user-supplied metadata set for the static rendition. Max 255 characters.
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
        :'name' => :'name',
        :'ext' => :'ext',
        :'height' => :'height',
        :'width' => :'width',
        :'bitrate' => :'bitrate',
        :'filesize' => :'filesize',
        :'type' => :'type',
        :'status' => :'status',
        :'resolution_tier' => :'resolution_tier',
        :'resolution' => :'resolution',
        :'id' => :'id',
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
        :'name' => :'String',
        :'ext' => :'String',
        :'height' => :'Integer',
        :'width' => :'Integer',
        :'bitrate' => :'Integer',
        :'filesize' => :'String',
        :'type' => :'String',
        :'status' => :'String',
        :'resolution_tier' => :'String',
        :'resolution' => :'String',
        :'id' => :'String',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MuxRuby::StaticRendition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MuxRuby::StaticRendition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'ext')
        self.ext = attributes[:'ext']
      end

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.key?(:'bitrate')
        self.bitrate = attributes[:'bitrate']
      end

      if attributes.key?(:'filesize')
        self.filesize = attributes[:'filesize']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'resolution_tier')
        self.resolution_tier = attributes[:'resolution_tier']
      end

      if attributes.key?(:'resolution')
        self.resolution = attributes[:'resolution']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
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
      name_validator = EnumAttributeValidator.new('String', ["low.mp4", "medium.mp4", "high.mp4", "highest.mp4", "audio.m4a", "capped-1080p.mp4", "2160p.mp4", "1440p.mp4", "1080p.mp4", "720p.mp4", "540p.mp4", "480p.mp4", "360p.mp4", "270p.mp4"])
      return false unless name_validator.valid?(@name)
      ext_validator = EnumAttributeValidator.new('String', ["mp4", "m4a"])
      return false unless ext_validator.valid?(@ext)
      type_validator = EnumAttributeValidator.new('String', ["standard", "advanced"])
      return false unless type_validator.valid?(@type)
      status_validator = EnumAttributeValidator.new('String', ["ready", "preparing", "skipped", "errored"])
      return false unless status_validator.valid?(@status)
      resolution_tier_validator = EnumAttributeValidator.new('String', ["2160p", "1440p", "1080p", "720p", "audio-only"])
      return false unless resolution_tier_validator.valid?(@resolution_tier)
      resolution_validator = EnumAttributeValidator.new('String', ["highest", "audio-only", "2160p", "1440p", "1080p", "720p", "540p", "480p", "360p", "270p"])
      return false unless resolution_validator.valid?(@resolution)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name)
      validator = EnumAttributeValidator.new('String', ["low.mp4", "medium.mp4", "high.mp4", "highest.mp4", "audio.m4a", "capped-1080p.mp4", "2160p.mp4", "1440p.mp4", "1080p.mp4", "720p.mp4", "540p.mp4", "480p.mp4", "360p.mp4", "270p.mp4"])
      unless validator.valid?(name)
        fail ArgumentError, "invalid value for \"name\", must be one of #{validator.allowable_values}."
      end
      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ext Object to be assigned
    def ext=(ext)
      validator = EnumAttributeValidator.new('String', ["mp4", "m4a"])
      unless validator.valid?(ext)
        fail ArgumentError, "invalid value for \"ext\", must be one of #{validator.allowable_values}."
      end
      @ext = ext
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["standard", "advanced"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ready", "preparing", "skipped", "errored"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resolution_tier Object to be assigned
    def resolution_tier=(resolution_tier)
      validator = EnumAttributeValidator.new('String', ["2160p", "1440p", "1080p", "720p", "audio-only"])
      unless validator.valid?(resolution_tier)
        fail ArgumentError, "invalid value for \"resolution_tier\", must be one of #{validator.allowable_values}."
      end
      @resolution_tier = resolution_tier
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resolution Object to be assigned
    def resolution=(resolution)
      validator = EnumAttributeValidator.new('String', ["highest", "audio-only", "2160p", "1440p", "1080p", "720p", "540p", "480p", "360p", "270p"])
      unless validator.valid?(resolution)
        fail ArgumentError, "invalid value for \"resolution\", must be one of #{validator.allowable_values}."
      end
      @resolution = resolution
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          ext == o.ext &&
          height == o.height &&
          width == o.width &&
          bitrate == o.bitrate &&
          filesize == o.filesize &&
          type == o.type &&
          status == o.status &&
          resolution_tier == o.resolution_tier &&
          resolution == o.resolution &&
          id == o.id &&
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
      [name, ext, height, width, bitrate, filesize, type, status, resolution_tier, resolution, id, passthrough].hash
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
