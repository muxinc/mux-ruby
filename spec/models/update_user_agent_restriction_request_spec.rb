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

# Unit tests for MuxRuby::UpdateUserAgentRestrictionRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe MuxRuby::UpdateUserAgentRestrictionRequest do
  let(:instance) { MuxRuby::UpdateUserAgentRestrictionRequest.new }

  describe 'test an instance of UpdateUserAgentRestrictionRequest' do
    it 'should create an instance of UpdateUserAgentRestrictionRequest' do
      expect(instance).to be_instance_of(MuxRuby::UpdateUserAgentRestrictionRequest)
    end
  end
  describe 'test attribute "allow_no_user_agent"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "allow_high_risk_user_agent"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
