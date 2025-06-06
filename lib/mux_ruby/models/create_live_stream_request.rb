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
  class CreateLiveStreamRequest
    # Deprecated. Use `playback_policies` instead, which accepts an identical type.
    attr_accessor :playback_policy

    # An array of playback policy names that you want applied to this live stream and available through `playback_ids`. Options include:  * `\"public\"` (anyone with the playback URL can stream the live stream). * `\"signed\"` (an additional access token is required to play the live stream).  If no `playback_policies` is set, the live stream will have no playback IDs and will therefore not be playable. For simplicity, a single string name can be used in place of the array in the case of only one playback policy. 
    attr_accessor :playback_policies

    # An array of playback policy objects that you want applied on this live stream and available through `playback_ids`. `advanced_playback_policies` must be used instead of `playback_policies` when creating a DRM playback ID. 
    attr_accessor :advanced_playback_policies

    attr_accessor :new_asset_settings

    # When live streaming software disconnects from Mux, either intentionally or due to a drop in the network, the Reconnect Window is the time in seconds that Mux should wait for the streaming software to reconnect before considering the live stream finished and completing the recorded asset. Defaults to 60 seconds on the API if not specified.  If not specified directly, Standard Latency streams have a Reconnect Window of 60 seconds; Reduced and Low Latency streams have a default of 0 seconds, or no Reconnect Window. For that reason, we suggest specifying a value other than zero for Reduced and Low Latency streams.  Reduced and Low Latency streams with a Reconnect Window greater than zero will insert slate media into the recorded asset while waiting for the streaming software to reconnect or when there are brief interruptions in the live stream media. When using a Reconnect Window setting higher than 60 seconds with a Standard Latency stream, we highly recommend enabling slate with the `use_slate_for_standard_latency` option. 
    attr_accessor :reconnect_window

    # By default, Standard Latency live streams do not have slate media inserted while waiting for live streaming software to reconnect to Mux. Setting this to true enables slate insertion on a Standard Latency stream.
    attr_accessor :use_slate_for_standard_latency

    # The URL of the image file that Mux should download and use as slate media during interruptions of the live stream media. This file will be downloaded each time a new recorded asset is created from the live stream. If this is not set, the default slate media will be used.
    attr_accessor :reconnect_slate_url

    attr_accessor :passthrough

    # Force the live stream to only process the audio track when the value is set to true. Mux drops the video track if broadcasted.
    attr_accessor :audio_only

    # Describe the embedded closed caption contents of the incoming live stream.
    attr_accessor :embedded_subtitles

    # Configure the incoming live stream to include subtitles created with automatic speech recognition. Each Asset created from a live stream with `generated_subtitles` configured will automatically receive two text tracks. The first of these will have a `text_source` value of `generated_live`, and will be available with `ready` status as soon as the stream is live. The second text track will have a `text_source` value of `generated_live_final` and will contain subtitles with improved accuracy, timing, and formatting. However, `generated_live_final` tracks will not be available in `ready` status until the live stream ends. If an Asset has both `generated_live` and `generated_live_final` tracks that are `ready`, then only the `generated_live_final` track will be included during playback.
    attr_accessor :generated_subtitles

    # This field is deprecated. Please use `latency_mode` instead. Latency is the time from when the streamer transmits a frame of video to when you see it in the player. Set this if you want lower latency for your live stream. Read more here: https://mux.com/blog/reduced-latency-for-mux-live-streaming-now-available/
    attr_accessor :reduced_latency

    # This field is deprecated. Please use `latency_mode` instead. Latency is the time from when the streamer transmits a frame of video to when you see it in the player. Setting this option will enable compatibility with the LL-HLS specification for low-latency streaming. This typically has lower latency than Reduced Latency streams, and cannot be combined with Reduced Latency.
    attr_accessor :low_latency

    # Latency is the time from when the streamer transmits a frame of video to when you see it in the player. Set this as an alternative to setting low latency or reduced latency flags.
    attr_accessor :latency_mode

    # Marks the live stream as a test live stream when the value is set to true. A test live stream can help evaluate the Mux Video APIs without incurring any cost. There is no limit on number of test live streams created. Test live streams are watermarked with the Mux logo and limited to 5 minutes. The test live stream is disabled after the stream is active for 5 mins and the recorded asset also deleted after 24 hours.
    attr_accessor :test

    attr_accessor :simulcast_targets

    # The time in seconds a live stream may be continuously active before being disconnected. Defaults to 12 hours.
    attr_accessor :max_continuous_duration

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
        :'playback_policy' => :'playback_policy',
        :'playback_policies' => :'playback_policies',
        :'advanced_playback_policies' => :'advanced_playback_policies',
        :'new_asset_settings' => :'new_asset_settings',
        :'reconnect_window' => :'reconnect_window',
        :'use_slate_for_standard_latency' => :'use_slate_for_standard_latency',
        :'reconnect_slate_url' => :'reconnect_slate_url',
        :'passthrough' => :'passthrough',
        :'audio_only' => :'audio_only',
        :'embedded_subtitles' => :'embedded_subtitles',
        :'generated_subtitles' => :'generated_subtitles',
        :'reduced_latency' => :'reduced_latency',
        :'low_latency' => :'low_latency',
        :'latency_mode' => :'latency_mode',
        :'test' => :'test',
        :'simulcast_targets' => :'simulcast_targets',
        :'max_continuous_duration' => :'max_continuous_duration'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'playback_policy' => :'Array<PlaybackPolicy>',
        :'playback_policies' => :'Array<PlaybackPolicy>',
        :'advanced_playback_policies' => :'Array<CreatePlaybackIDRequest>',
        :'new_asset_settings' => :'CreateAssetRequest',
        :'reconnect_window' => :'Float',
        :'use_slate_for_standard_latency' => :'Boolean',
        :'reconnect_slate_url' => :'String',
        :'passthrough' => :'String',
        :'audio_only' => :'Boolean',
        :'embedded_subtitles' => :'Array<LiveStreamEmbeddedSubtitleSettings>',
        :'generated_subtitles' => :'Array<LiveStreamGeneratedSubtitleSettings>',
        :'reduced_latency' => :'Boolean',
        :'low_latency' => :'Boolean',
        :'latency_mode' => :'String',
        :'test' => :'Boolean',
        :'simulcast_targets' => :'Array<CreateSimulcastTargetRequest>',
        :'max_continuous_duration' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MuxRuby::CreateLiveStreamRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MuxRuby::CreateLiveStreamRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'playback_policy')
        if (value = attributes[:'playback_policy']).is_a?(Array)
          self.playback_policy = value
        end
      end

      if attributes.key?(:'playback_policies')
        if (value = attributes[:'playback_policies']).is_a?(Array)
          self.playback_policies = value
        end
      end

      if attributes.key?(:'advanced_playback_policies')
        if (value = attributes[:'advanced_playback_policies']).is_a?(Array)
          self.advanced_playback_policies = value
        end
      end

      if attributes.key?(:'new_asset_settings')
        self.new_asset_settings = attributes[:'new_asset_settings']
      end

      if attributes.key?(:'reconnect_window')
        self.reconnect_window = attributes[:'reconnect_window']
      else
        self.reconnect_window = 60
      end

      if attributes.key?(:'use_slate_for_standard_latency')
        self.use_slate_for_standard_latency = attributes[:'use_slate_for_standard_latency']
      else
        self.use_slate_for_standard_latency = false
      end

      if attributes.key?(:'reconnect_slate_url')
        self.reconnect_slate_url = attributes[:'reconnect_slate_url']
      end

      if attributes.key?(:'passthrough')
        self.passthrough = attributes[:'passthrough']
      end

      if attributes.key?(:'audio_only')
        self.audio_only = attributes[:'audio_only']
      end

      if attributes.key?(:'embedded_subtitles')
        if (value = attributes[:'embedded_subtitles']).is_a?(Array)
          self.embedded_subtitles = value
        end
      end

      if attributes.key?(:'generated_subtitles')
        if (value = attributes[:'generated_subtitles']).is_a?(Array)
          self.generated_subtitles = value
        end
      end

      if attributes.key?(:'reduced_latency')
        self.reduced_latency = attributes[:'reduced_latency']
      end

      if attributes.key?(:'low_latency')
        self.low_latency = attributes[:'low_latency']
      end

      if attributes.key?(:'latency_mode')
        self.latency_mode = attributes[:'latency_mode']
      end

      if attributes.key?(:'test')
        self.test = attributes[:'test']
      end

      if attributes.key?(:'simulcast_targets')
        if (value = attributes[:'simulcast_targets']).is_a?(Array)
          self.simulcast_targets = value
        end
      end

      if attributes.key?(:'max_continuous_duration')
        self.max_continuous_duration = attributes[:'max_continuous_duration']
      else
        self.max_continuous_duration = 43200
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@reconnect_window.nil? && @reconnect_window > 1800
        invalid_properties.push('invalid value for "reconnect_window", must be smaller than or equal to 1800.')
      end

      if !@reconnect_window.nil? && @reconnect_window < 0
        invalid_properties.push('invalid value for "reconnect_window", must be greater than or equal to 0.')
      end

      if !@max_continuous_duration.nil? && @max_continuous_duration > 43200
        invalid_properties.push('invalid value for "max_continuous_duration", must be smaller than or equal to 43200.')
      end

      if !@max_continuous_duration.nil? && @max_continuous_duration < 60
        invalid_properties.push('invalid value for "max_continuous_duration", must be greater than or equal to 60.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@reconnect_window.nil? && @reconnect_window > 1800
      return false if !@reconnect_window.nil? && @reconnect_window < 0
      latency_mode_validator = EnumAttributeValidator.new('String', ["low", "reduced", "standard"])
      return false unless latency_mode_validator.valid?(@latency_mode)
      return false if !@max_continuous_duration.nil? && @max_continuous_duration > 43200
      return false if !@max_continuous_duration.nil? && @max_continuous_duration < 60
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reconnect_window Value to be assigned
    def reconnect_window=(reconnect_window)
      if !reconnect_window.nil? && reconnect_window > 1800
        fail ArgumentError, 'invalid value for "reconnect_window", must be smaller than or equal to 1800.'
      end

      if !reconnect_window.nil? && reconnect_window < 0
        fail ArgumentError, 'invalid value for "reconnect_window", must be greater than or equal to 0.'
      end

      @reconnect_window = reconnect_window
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] latency_mode Object to be assigned
    def latency_mode=(latency_mode)
      validator = EnumAttributeValidator.new('String', ["low", "reduced", "standard"])
      unless validator.valid?(latency_mode)
        fail ArgumentError, "invalid value for \"latency_mode\", must be one of #{validator.allowable_values}."
      end
      @latency_mode = latency_mode
    end

    # Custom attribute writer method with validation
    # @param [Object] max_continuous_duration Value to be assigned
    def max_continuous_duration=(max_continuous_duration)
      if !max_continuous_duration.nil? && max_continuous_duration > 43200
        fail ArgumentError, 'invalid value for "max_continuous_duration", must be smaller than or equal to 43200.'
      end

      if !max_continuous_duration.nil? && max_continuous_duration < 60
        fail ArgumentError, 'invalid value for "max_continuous_duration", must be greater than or equal to 60.'
      end

      @max_continuous_duration = max_continuous_duration
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          playback_policy == o.playback_policy &&
          playback_policies == o.playback_policies &&
          advanced_playback_policies == o.advanced_playback_policies &&
          new_asset_settings == o.new_asset_settings &&
          reconnect_window == o.reconnect_window &&
          use_slate_for_standard_latency == o.use_slate_for_standard_latency &&
          reconnect_slate_url == o.reconnect_slate_url &&
          passthrough == o.passthrough &&
          audio_only == o.audio_only &&
          embedded_subtitles == o.embedded_subtitles &&
          generated_subtitles == o.generated_subtitles &&
          reduced_latency == o.reduced_latency &&
          low_latency == o.low_latency &&
          latency_mode == o.latency_mode &&
          test == o.test &&
          simulcast_targets == o.simulcast_targets &&
          max_continuous_duration == o.max_continuous_duration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [playback_policy, playback_policies, advanced_playback_policies, new_asset_settings, reconnect_window, use_slate_for_standard_latency, reconnect_slate_url, passthrough, audio_only, embedded_subtitles, generated_subtitles, reduced_latency, low_latency, latency_mode, test, simulcast_targets, max_continuous_duration].hash
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
