=begin
# Mux Ruby - Copyright 2019 Mux Inc.
# NOTE: This file is auto generated. Do not edit this file manually.
=end

require 'spec_helper'
require 'json'

# Unit tests for MuxRuby::FiltersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FiltersApi' do
  before do
    # run before each test
    @instance = MuxRuby::FiltersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FiltersApi' do
    it 'should create an instance of FiltersApi' do
      expect(@instance).to be_instance_of(MuxRuby::FiltersApi)
    end
  end

  # unit tests for list_filter_values
  # Lists values for a specific filter
  # Deprecated: The API has been replaced by the list-dimension-values API call.  Lists the values for a filter along with a total count of related views. 
  # @param filter_id ID of the Filter
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of items to include in the response
  # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60;
  # @option opts [Array<String>] :filters Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US).  Possible filter names are the same as returned by the List Filters endpoint. 
  # @option opts [Array<String>] :timeframe Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600    * duration string e.g. timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days. 
  # @return [ListFilterValuesResponse]
  describe 'list_filter_values test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_filters
  # List Filters
  # Deprecated: The API has been replaced by the list-dimensions API call.  Lists all the filters broken out into basic and advanced. 
  # @param [Hash] opts the optional parameters
  # @return [ListFiltersResponse]
  describe 'list_filters test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
