=begin
# Mux Ruby - Copyright 2019 Mux Inc.
# NOTE: This file is auto generated. Do not edit this file manually.
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for MuxRuby::UpdateAssetMasterAccessRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UpdateAssetMasterAccessRequest' do
  before do
    # run before each test
    @instance = MuxRuby::UpdateAssetMasterAccessRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UpdateAssetMasterAccessRequest' do
    it 'should create an instance of UpdateAssetMasterAccessRequest' do
      expect(@instance).to be_instance_of(MuxRuby::UpdateAssetMasterAccessRequest)
    end
  end
  describe 'test attribute "master_access"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["temporary", "none"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.master_access = value }.not_to raise_error
      # end
    end
  end

end