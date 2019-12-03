=begin
# Mux Ruby - Copyright 2019 Mux Inc.
# NOTE: This file is auto generated. Do not edit this file manually.
=end

require 'spec_helper'
require 'json'

# Unit tests for MuxRuby::LiveStreamsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LiveStreamsApi' do
  before do
    # run before each test
    @instance = MuxRuby::LiveStreamsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LiveStreamsApi' do
    it 'should create an instance of LiveStreamsApi' do
      expect(@instance).to be_instance_of(MuxRuby::LiveStreamsApi)
    end
  end

  # unit tests for create_live_stream
  # Create a live stream
  # @param create_live_stream_request 
  # @param [Hash] opts the optional parameters
  # @return [LiveStreamResponse]
  describe 'create_live_stream test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_live_stream_playback_id
  # Create a live stream playback ID
  # @param live_stream_id The live stream ID
  # @param create_playback_id_request 
  # @param [Hash] opts the optional parameters
  # @return [CreatePlaybackIDResponse]
  describe 'create_live_stream_playback_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_live_stream_simulcast_target
  # Create a live stream simulcast target
  # Create a simulcast target for the parent live stream. Simulcast target can only be created when the parent live stream is in idle state. Only one simulcast target can be created at a time with this API.
  # @param live_stream_id The live stream ID
  # @param create_simulcast_target_request 
  # @param [Hash] opts the optional parameters
  # @return [SimulcastTargetResponse]
  describe 'create_live_stream_simulcast_target test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_live_stream
  # Delete a live stream
  # @param live_stream_id The live stream ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_live_stream test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_live_stream_playback_id
  # Delete a live stream playback ID
  # @param live_stream_id The live stream ID
  # @param playback_id The live stream&#39;s playback ID.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_live_stream_playback_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_live_stream_simulcast_target
  # Delete a Live Stream Simulcast Target
  # Delete the simulcast target using the simulcast target ID returned when creating the simulcast target. Simulcast Target can only be deleted when the parent live stream is in idle state.
  # @param live_stream_id The live stream ID
  # @param simulcast_target_id The ID of the simulcast target.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_live_stream_simulcast_target test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_live_stream
  # Retrieve a live stream
  # Retrieves the details of a live stream that has previously been created. Supply the unique live stream ID that was returned from your previous request, and Mux will return the corresponding live stream information. The same information is returned when creating a live stream.
  # @param live_stream_id The live stream ID
  # @param [Hash] opts the optional parameters
  # @return [LiveStreamResponse]
  describe 'get_live_stream test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_live_stream_simulcast_target
  # Retrieve a Live Stream Simulcast Target
  # Retrieves the details of the simulcast target created for the parent live stream. Supply the unique live stream ID and simulcast target ID that was returned in the response of create simulcast target request, and Mux will return the corresponding information.
  # @param live_stream_id The live stream ID
  # @param simulcast_target_id The ID of the simulcast target.
  # @param [Hash] opts the optional parameters
  # @return [SimulcastTargetResponse]
  describe 'get_live_stream_simulcast_target test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_live_streams
  # List live streams
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of items to include in the response
  # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60;
  # @return [ListLiveStreamsResponse]
  describe 'list_live_streams test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reset_stream_key
  # Reset a live stream’s stream key
  # Reset a live stream key if you want to immediately stop the current stream key from working and create a new stream key that can be used for future broadcasts.
  # @param live_stream_id The live stream ID
  # @param [Hash] opts the optional parameters
  # @return [LiveStreamResponse]
  describe 'reset_stream_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signal_live_stream_complete
  # Signal a live stream is finished
  # (Optional) Make the recorded asset available immediately instead of waiting for the reconnect_window.
  # @param live_stream_id The live stream ID
  # @param [Hash] opts the optional parameters
  # @return [SignalLiveStreamCompleteResponse]
  describe 'signal_live_stream_complete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
