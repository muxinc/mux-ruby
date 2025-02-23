=begin
#Mux API

#Mux is how developers build online video. This API encompasses both Mux Video and Mux Data functionality to help you build your video-related projects better and faster than ever before.

The version of the OpenAPI document: v1
Contact: devex@mux.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for MuxRuby::CreateStaticRenditionRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe MuxRuby::CreateStaticRenditionRequest do
  let(:instance) { MuxRuby::CreateStaticRenditionRequest.new }

  describe 'test an instance of CreateStaticRenditionRequest' do
    it 'should create an instance of CreateStaticRenditionRequest' do
      expect(instance).to be_instance_of(MuxRuby::CreateStaticRenditionRequest)
    end
  end
  describe 'test attribute "resolution"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["highest", "audio-only", "2160p", "1440p", "1080p", "720p", "540p", "480p", "360p", "270p"])
      # validator.allowable_values.each do |value|
      #   expect { instance.resolution = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "passthrough"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
