=begin
# Mux Ruby - Copyright 2019 Mux Inc.
# NOTE: This file is auto generated. Do not edit this file manually.
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for MuxRuby::CreateAssetRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CreateAssetRequest' do
  before do
    # run before each test
    @instance = MuxRuby::CreateAssetRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateAssetRequest' do
    it 'should create an instance of CreateAssetRequest' do
      expect(@instance).to be_instance_of(MuxRuby::CreateAssetRequest)
    end
  end
  describe 'test attribute "input"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "playback_policy"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "per_title_encode"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "passthrough"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "mp4_support"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["none", "standard"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.mp4_support = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "normalize_audio"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "master_access"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["none", "temporary"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.master_access = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "test"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end