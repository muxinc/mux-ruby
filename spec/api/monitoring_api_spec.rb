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

# Unit tests for MuxRuby::MonitoringApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MonitoringApi' do
  before do
    # run before each test
    @api_instance = MuxRuby::MonitoringApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MonitoringApi' do
    it 'should create an instance of MonitoringApi' do
      expect(@api_instance).to be_instance_of(MuxRuby::MonitoringApi)
    end
  end

  # unit tests for get_monitoring_breakdown
  # Get Monitoring Breakdown
  # Gets breakdown information for a specific dimension and metric along with the number of concurrent viewers and negative impact score.
  # @param monitoring_metric_id ID of the Monitoring Metric
  # @param [Hash] opts the optional parameters
  # @option opts [String] :dimension Dimension the specified value belongs to
  # @option opts [Integer] :timestamp Timestamp to limit results by. This value must be provided as a unix timestamp. Defaults to the current unix timestamp.
  # @option opts [Array<String>] :filters Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60; 
  # @option opts [String] :order_by Value to order the results by
  # @option opts [String] :order_direction Sort order.
  # @return [GetMonitoringBreakdownResponse]
  describe 'get_monitoring_breakdown test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_monitoring_histogram_timeseries
  # Get Monitoring Histogram Timeseries
  # Gets histogram timeseries information for a specific metric.
  # @param monitoring_histogram_metric_id ID of the Monitoring Histogram Metric
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filters Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60; 
  # @return [GetMonitoringHistogramTimeseriesResponse]
  describe 'get_monitoring_histogram_timeseries test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_monitoring_timeseries
  # Get Monitoring Timeseries
  # Gets Time series information for a specific metric along with the number of concurrent viewers.
  # @param monitoring_metric_id ID of the Monitoring Metric
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filters Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60; 
  # @return [GetMonitoringTimeseriesResponse]
  describe 'get_monitoring_timeseries test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_monitoring_dimensions
  # List Monitoring Dimensions
  # Lists available monitoring dimensions.
  # @param [Hash] opts the optional parameters
  # @return [ListMonitoringDimensionsResponse]
  describe 'list_monitoring_dimensions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_monitoring_metrics
  # List Monitoring Metrics
  # Lists available monitoring metrics.
  # @param [Hash] opts the optional parameters
  # @return [ListMonitoringMetricsResponse]
  describe 'list_monitoring_metrics test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end