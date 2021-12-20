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
  class Asset
    # Unique identifier for the Asset. Max 255 characters.
    attr_accessor :id

    # Time the Asset was created, defined as a Unix timestamp (seconds since epoch).
    attr_accessor :created_at

    # The status of the asset.
    attr_accessor :status

    # The duration of the asset in seconds (max duration for a single asset is 12 hours).
    attr_accessor :duration

    # The maximum resolution that has been stored for the asset. The asset may be delivered at lower resolutions depending on the device and bandwidth, however it cannot be delivered at a higher value than is stored.
    attr_accessor :max_stored_resolution

    # The maximum frame rate that has been stored for the asset. The asset may be delivered at lower frame rates depending on the device and bandwidth, however it cannot be delivered at a higher value than is stored. This field may return -1 if the frame rate of the input cannot be reliably determined.
    attr_accessor :max_stored_frame_rate

    # The aspect ratio of the asset in the form of `width:height`, for example `16:9`.
    attr_accessor :aspect_ratio

    # An array of Playback ID objects. Use these to create HLS playback URLs. See [Play your videos](https://docs.mux.com/guides/video/play-your-videos) for more details.
    attr_accessor :playback_ids

    # The individual media tracks that make up an asset.
    attr_accessor :tracks

    attr_accessor :errors

    attr_accessor :per_title_encode

    # Unique identifier for the Direct Upload. This is an optional parameter added when the asset is created from a direct upload.
    attr_accessor :upload_id

    # Whether the asset is created from a live stream and the live stream is currently `active` and not in `idle` state.
    attr_accessor :is_live

    # Arbitrary user-supplied metadata set for the asset. Max 255 characters.
    attr_accessor :passthrough

    # Unique identifier for the live stream. This is an optional parameter added when the asset is created from a live stream.
    attr_accessor :live_stream_id

    attr_accessor :master

    attr_accessor :master_access

    attr_accessor :mp4_support

    # Asset Identifier of the video used as the source for creating the clip.
    attr_accessor :source_asset_id

    # Normalize the audio track loudness level. This parameter is only applicable to on-demand (not live) assets.
    attr_accessor :normalize_audio

    attr_accessor :static_renditions

    # An array of individual live stream recording sessions. A recording session is created on each encoder connection during the live stream
    attr_accessor :recording_times

    attr_accessor :non_standard_input_reasons

    # True means this live stream is a test asset. A test asset can help evaluate the Mux Video APIs without incurring any cost. There is no limit on number of test assets created. Test assets are watermarked with the Mux logo, limited to 10 seconds, and deleted after 24 hrs.
    attr_accessor :test

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
        :'created_at' => :'created_at',
        :'status' => :'status',
        :'duration' => :'duration',
        :'max_stored_resolution' => :'max_stored_resolution',
        :'max_stored_frame_rate' => :'max_stored_frame_rate',
        :'aspect_ratio' => :'aspect_ratio',
        :'playback_ids' => :'playback_ids',
        :'tracks' => :'tracks',
        :'errors' => :'errors',
        :'per_title_encode' => :'per_title_encode',
        :'upload_id' => :'upload_id',
        :'is_live' => :'is_live',
        :'passthrough' => :'passthrough',
        :'live_stream_id' => :'live_stream_id',
        :'master' => :'master',
        :'master_access' => :'master_access',
        :'mp4_support' => :'mp4_support',
        :'source_asset_id' => :'source_asset_id',
        :'normalize_audio' => :'normalize_audio',
        :'static_renditions' => :'static_renditions',
        :'recording_times' => :'recording_times',
        :'non_standard_input_reasons' => :'non_standard_input_reasons',
        :'test' => :'test'
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
        :'created_at' => :'String',
        :'status' => :'String',
        :'duration' => :'Float',
        :'max_stored_resolution' => :'String',
        :'max_stored_frame_rate' => :'Float',
        :'aspect_ratio' => :'String',
        :'playback_ids' => :'Array<PlaybackID>',
        :'tracks' => :'Array<Track>',
        :'errors' => :'AssetErrors',
        :'per_title_encode' => :'Boolean',
        :'upload_id' => :'String',
        :'is_live' => :'Boolean',
        :'passthrough' => :'String',
        :'live_stream_id' => :'String',
        :'master' => :'AssetMaster',
        :'master_access' => :'String',
        :'mp4_support' => :'String',
        :'source_asset_id' => :'String',
        :'normalize_audio' => :'Boolean',
        :'static_renditions' => :'AssetStaticRenditions',
        :'recording_times' => :'Array<AssetRecordingTimes>',
        :'non_standard_input_reasons' => :'AssetNonStandardInputReasons',
        :'test' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MuxRuby::Asset` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MuxRuby::Asset`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'max_stored_resolution')
        self.max_stored_resolution = attributes[:'max_stored_resolution']
      end

      if attributes.key?(:'max_stored_frame_rate')
        self.max_stored_frame_rate = attributes[:'max_stored_frame_rate']
      end

      if attributes.key?(:'aspect_ratio')
        self.aspect_ratio = attributes[:'aspect_ratio']
      end

      if attributes.key?(:'playback_ids')
        if (value = attributes[:'playback_ids']).is_a?(Array)
          self.playback_ids = value
        end
      end

      if attributes.key?(:'tracks')
        if (value = attributes[:'tracks']).is_a?(Array)
          self.tracks = value
        end
      end

      if attributes.key?(:'errors')
        self.errors = attributes[:'errors']
      end

      if attributes.key?(:'per_title_encode')
        self.per_title_encode = attributes[:'per_title_encode']
      end

      if attributes.key?(:'upload_id')
        self.upload_id = attributes[:'upload_id']
      end

      if attributes.key?(:'is_live')
        self.is_live = attributes[:'is_live']
      end

      if attributes.key?(:'passthrough')
        self.passthrough = attributes[:'passthrough']
      end

      if attributes.key?(:'live_stream_id')
        self.live_stream_id = attributes[:'live_stream_id']
      end

      if attributes.key?(:'master')
        self.master = attributes[:'master']
      end

      if attributes.key?(:'master_access')
        self.master_access = attributes[:'master_access']
      else
        self.master_access = 'none'
      end

      if attributes.key?(:'mp4_support')
        self.mp4_support = attributes[:'mp4_support']
      else
        self.mp4_support = 'none'
      end

      if attributes.key?(:'source_asset_id')
        self.source_asset_id = attributes[:'source_asset_id']
      end

      if attributes.key?(:'normalize_audio')
        self.normalize_audio = attributes[:'normalize_audio']
      else
        self.normalize_audio = false
      end

      if attributes.key?(:'static_renditions')
        self.static_renditions = attributes[:'static_renditions']
      end

      if attributes.key?(:'recording_times')
        if (value = attributes[:'recording_times']).is_a?(Array)
          self.recording_times = value
        end
      end

      if attributes.key?(:'non_standard_input_reasons')
        self.non_standard_input_reasons = attributes[:'non_standard_input_reasons']
      end

      if attributes.key?(:'test')
        self.test = attributes[:'test']
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
      status_validator = EnumAttributeValidator.new('String', ["preparing", "ready", "errored"])
      return false unless status_validator.valid?(@status)
      max_stored_resolution_validator = EnumAttributeValidator.new('String', ["Audio only", "SD", "HD", "FHD", "UHD"])
      return false unless max_stored_resolution_validator.valid?(@max_stored_resolution)
      master_access_validator = EnumAttributeValidator.new('String', ["temporary", "none"])
      return false unless master_access_validator.valid?(@master_access)
      mp4_support_validator = EnumAttributeValidator.new('String', ["standard", "none"])
      return false unless mp4_support_validator.valid?(@mp4_support)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["preparing", "ready", "errored"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] max_stored_resolution Object to be assigned
    def max_stored_resolution=(max_stored_resolution)
      validator = EnumAttributeValidator.new('String', ["Audio only", "SD", "HD", "FHD", "UHD"])
      unless validator.valid?(max_stored_resolution)
        fail ArgumentError, "invalid value for \"max_stored_resolution\", must be one of #{validator.allowable_values}."
      end
      @max_stored_resolution = max_stored_resolution
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] master_access Object to be assigned
    def master_access=(master_access)
      validator = EnumAttributeValidator.new('String', ["temporary", "none"])
      unless validator.valid?(master_access)
        fail ArgumentError, "invalid value for \"master_access\", must be one of #{validator.allowable_values}."
      end
      @master_access = master_access
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mp4_support Object to be assigned
    def mp4_support=(mp4_support)
      validator = EnumAttributeValidator.new('String', ["standard", "none"])
      unless validator.valid?(mp4_support)
        fail ArgumentError, "invalid value for \"mp4_support\", must be one of #{validator.allowable_values}."
      end
      @mp4_support = mp4_support
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          status == o.status &&
          duration == o.duration &&
          max_stored_resolution == o.max_stored_resolution &&
          max_stored_frame_rate == o.max_stored_frame_rate &&
          aspect_ratio == o.aspect_ratio &&
          playback_ids == o.playback_ids &&
          tracks == o.tracks &&
          errors == o.errors &&
          per_title_encode == o.per_title_encode &&
          upload_id == o.upload_id &&
          is_live == o.is_live &&
          passthrough == o.passthrough &&
          live_stream_id == o.live_stream_id &&
          master == o.master &&
          master_access == o.master_access &&
          mp4_support == o.mp4_support &&
          source_asset_id == o.source_asset_id &&
          normalize_audio == o.normalize_audio &&
          static_renditions == o.static_renditions &&
          recording_times == o.recording_times &&
          non_standard_input_reasons == o.non_standard_input_reasons &&
          test == o.test
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, status, duration, max_stored_resolution, max_stored_frame_rate, aspect_ratio, playback_ids, tracks, errors, per_title_encode, upload_id, is_live, passthrough, live_stream_id, master, master_access, mp4_support, source_asset_id, normalize_audio, static_renditions, recording_times, non_standard_input_reasons, test].hash
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
