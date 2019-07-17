=begin
# Mux Ruby - Copyright 2019 Mux Inc.
# NOTE: This file is auto generated. Do not edit this file manually.
=end

require 'date'

module MuxRuby
  class CreateLiveStreamRequest
    attr_accessor :playback_policy

    attr_accessor :new_asset_settings

    # When live streaming software disconnects from Mux, either intentionally or due to a drop in the network, the Reconnect Window is the time in seconds that Mux should wait for the streaming software to reconnect before considering the live stream finished and completing the recorded asset. Default: 60 seconds
    attr_accessor :reconnect_window

    attr_accessor :passthrough

    # Latency is the time from when the streamer does something in real life to when you see it happen in the player. Set this if you want lower latency for your live stream. Note: Reconnect windows are incompatible with Reduced Latency and will always be set to zero (0) seconds. Read more here: https://mux.com/blog/reduced-latency-for-mux-live-streaming-now-available/
    attr_accessor :reduced_latency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'playback_policy' => :'playback_policy',
        :'new_asset_settings' => :'new_asset_settings',
        :'reconnect_window' => :'reconnect_window',
        :'passthrough' => :'passthrough',
        :'reduced_latency' => :'reduced_latency'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'playback_policy' => :'Array<PlaybackPolicy>',
        :'new_asset_settings' => :'CreateAssetRequest',
        :'reconnect_window' => :'Float',
        :'passthrough' => :'String',
        :'reduced_latency' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'playback_policy')
        if (value = attributes[:'playback_policy']).is_a?(Array)
          self.playback_policy = value
        end
      end

      if attributes.has_key?(:'new_asset_settings')
        self.new_asset_settings = attributes[:'new_asset_settings']
      end

      if attributes.has_key?(:'reconnect_window')
        self.reconnect_window = attributes[:'reconnect_window']
      else
        self.reconnect_window = 60
      end

      if attributes.has_key?(:'passthrough')
        self.passthrough = attributes[:'passthrough']
      end

      if attributes.has_key?(:'reduced_latency')
        self.reduced_latency = attributes[:'reduced_latency']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@reconnect_window.nil? && @reconnect_window > 300
        invalid_properties.push('invalid value for "reconnect_window", must be smaller than or equal to 300.')
      end

      if !@reconnect_window.nil? && @reconnect_window < 0.1
        invalid_properties.push('invalid value for "reconnect_window", must be greater than or equal to 0.1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@reconnect_window.nil? && @reconnect_window > 300
      return false if !@reconnect_window.nil? && @reconnect_window < 0.1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reconnect_window Value to be assigned
    def reconnect_window=(reconnect_window)
      if !reconnect_window.nil? && reconnect_window > 300
        fail ArgumentError, 'invalid value for "reconnect_window", must be smaller than or equal to 300.'
      end

      if !reconnect_window.nil? && reconnect_window < 0.1
        fail ArgumentError, 'invalid value for "reconnect_window", must be greater than or equal to 0.1.'
      end

      @reconnect_window = reconnect_window
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          playback_policy == o.playback_policy &&
          new_asset_settings == o.new_asset_settings &&
          reconnect_window == o.reconnect_window &&
          passthrough == o.passthrough &&
          reduced_latency == o.reduced_latency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [playback_policy, new_asset_settings, reconnect_window, passthrough, reduced_latency].hash
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
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        MuxRuby.const_get(type).build_from_hash(value)
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
        next if value.nil?
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
