=begin
# Mux Ruby - Copyright 2019 Mux Inc.
# NOTE: This file is auto generated. Do not edit this file manually.
=end

require 'uri'

module MuxRuby
  class AssetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an asset
    # Create a new Mux Video asset. 
    # @param create_asset_request 
    # @param [Hash] opts the optional parameters
    # @return [AssetResponse]
    def create_asset(create_asset_request, opts = {})
      data, _status_code, _headers = create_asset_with_http_info(create_asset_request, opts)
      data
    end

    # Create an asset
    # Create a new Mux Video asset. 
    # @param create_asset_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssetResponse, Fixnum, Hash)>] AssetResponse data, response status code and response headers
    def create_asset_with_http_info(create_asset_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.create_asset ...'
      end
      # verify the required parameter 'create_asset_request' is set
      if @api_client.config.client_side_validation && create_asset_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_asset_request' when calling AssetsApi.create_asset"
      end
      # resource path
      local_var_path = '/video/v1/assets'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_asset_request)
      auth_names = ['accessToken']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#create_asset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a playback ID
    # @param asset_id The asset ID.
    # @param create_playback_id_request 
    # @param [Hash] opts the optional parameters
    # @return [CreatePlaybackIDResponse]
    def create_asset_playback_id(asset_id, create_playback_id_request, opts = {})
      data, _status_code, _headers = create_asset_playback_id_with_http_info(asset_id, create_playback_id_request, opts)
      data
    end

    # Create a playback ID
    # @param asset_id The asset ID.
    # @param create_playback_id_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreatePlaybackIDResponse, Fixnum, Hash)>] CreatePlaybackIDResponse data, response status code and response headers
    def create_asset_playback_id_with_http_info(asset_id, create_playback_id_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.create_asset_playback_id ...'
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.create_asset_playback_id"
      end
      # verify the required parameter 'create_playback_id_request' is set
      if @api_client.config.client_side_validation && create_playback_id_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_playback_id_request' when calling AssetsApi.create_asset_playback_id"
      end
      # resource path
      local_var_path = '/video/v1/assets/{ASSET_ID}/playback-ids'.sub('{' + 'ASSET_ID' + '}', asset_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_playback_id_request)
      auth_names = ['accessToken']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreatePlaybackIDResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#create_asset_playback_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an asset track
    # @param asset_id The asset ID.
    # @param create_track_request 
    # @param [Hash] opts the optional parameters
    # @return [CreateTrackResponse]
    def create_asset_track(asset_id, create_track_request, opts = {})
      data, _status_code, _headers = create_asset_track_with_http_info(asset_id, create_track_request, opts)
      data
    end

    # Create an asset track
    # @param asset_id The asset ID.
    # @param create_track_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateTrackResponse, Fixnum, Hash)>] CreateTrackResponse data, response status code and response headers
    def create_asset_track_with_http_info(asset_id, create_track_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.create_asset_track ...'
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.create_asset_track"
      end
      # verify the required parameter 'create_track_request' is set
      if @api_client.config.client_side_validation && create_track_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_track_request' when calling AssetsApi.create_asset_track"
      end
      # resource path
      local_var_path = '/video/v1/assets/{ASSET_ID}/tracks'.sub('{' + 'ASSET_ID' + '}', asset_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_track_request)
      auth_names = ['accessToken']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateTrackResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#create_asset_track\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an asset
    # @param asset_id The asset ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_asset(asset_id, opts = {})
      delete_asset_with_http_info(asset_id, opts)
      nil
    end

    # Delete an asset
    # @param asset_id The asset ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_asset_with_http_info(asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.delete_asset ...'
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.delete_asset"
      end
      # resource path
      local_var_path = '/video/v1/assets/{ASSET_ID}'.sub('{' + 'ASSET_ID' + '}', asset_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['accessToken']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#delete_asset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a playback ID
    # @param asset_id The asset ID.
    # @param playback_id The live stream&#39;s playback ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_asset_playback_id(asset_id, playback_id, opts = {})
      delete_asset_playback_id_with_http_info(asset_id, playback_id, opts)
      nil
    end

    # Delete a playback ID
    # @param asset_id The asset ID.
    # @param playback_id The live stream&#39;s playback ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_asset_playback_id_with_http_info(asset_id, playback_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.delete_asset_playback_id ...'
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.delete_asset_playback_id"
      end
      # verify the required parameter 'playback_id' is set
      if @api_client.config.client_side_validation && playback_id.nil?
        fail ArgumentError, "Missing the required parameter 'playback_id' when calling AssetsApi.delete_asset_playback_id"
      end
      # resource path
      local_var_path = '/video/v1/assets/{ASSET_ID}/playback-ids/{PLAYBACK_ID}'.sub('{' + 'ASSET_ID' + '}', asset_id.to_s).sub('{' + 'PLAYBACK_ID' + '}', playback_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['accessToken']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#delete_asset_playback_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an asset track
    # @param asset_id The asset ID.
    # @param track_id The track ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_asset_track(asset_id, track_id, opts = {})
      delete_asset_track_with_http_info(asset_id, track_id, opts)
      nil
    end

    # Delete an asset track
    # @param asset_id The asset ID.
    # @param track_id The track ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_asset_track_with_http_info(asset_id, track_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.delete_asset_track ...'
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.delete_asset_track"
      end
      # verify the required parameter 'track_id' is set
      if @api_client.config.client_side_validation && track_id.nil?
        fail ArgumentError, "Missing the required parameter 'track_id' when calling AssetsApi.delete_asset_track"
      end
      # resource path
      local_var_path = '/video/v1/assets/{ASSET_ID}/tracks/{TRACK_ID}'.sub('{' + 'ASSET_ID' + '}', asset_id.to_s).sub('{' + 'TRACK_ID' + '}', track_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['accessToken']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#delete_asset_track\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an asset
    # Retrieves the details of an asset that has previously been created. Supply the unique asset ID that was returned from your previous request, and Mux will return the corresponding asset information. The same information is returned when creating an asset.
    # @param asset_id The asset ID.
    # @param [Hash] opts the optional parameters
    # @return [AssetResponse]
    def get_asset(asset_id, opts = {})
      data, _status_code, _headers = get_asset_with_http_info(asset_id, opts)
      data
    end

    # Retrieve an asset
    # Retrieves the details of an asset that has previously been created. Supply the unique asset ID that was returned from your previous request, and Mux will return the corresponding asset information. The same information is returned when creating an asset.
    # @param asset_id The asset ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssetResponse, Fixnum, Hash)>] AssetResponse data, response status code and response headers
    def get_asset_with_http_info(asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.get_asset ...'
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.get_asset"
      end
      # resource path
      local_var_path = '/video/v1/assets/{ASSET_ID}'.sub('{' + 'ASSET_ID' + '}', asset_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['accessToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#get_asset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve asset input info
    # Returns a list of the input objects that were used to create the asset along with any settings that were applied to each input.
    # @param asset_id The asset ID.
    # @param [Hash] opts the optional parameters
    # @return [GetAssetInputInfoResponse]
    def get_asset_input_info(asset_id, opts = {})
      data, _status_code, _headers = get_asset_input_info_with_http_info(asset_id, opts)
      data
    end

    # Retrieve asset input info
    # Returns a list of the input objects that were used to create the asset along with any settings that were applied to each input.
    # @param asset_id The asset ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAssetInputInfoResponse, Fixnum, Hash)>] GetAssetInputInfoResponse data, response status code and response headers
    def get_asset_input_info_with_http_info(asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.get_asset_input_info ...'
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.get_asset_input_info"
      end
      # resource path
      local_var_path = '/video/v1/assets/{ASSET_ID}/input-info'.sub('{' + 'ASSET_ID' + '}', asset_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['accessToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetAssetInputInfoResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#get_asset_input_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a playback ID
    # @param asset_id The asset ID.
    # @param playback_id The live stream&#39;s playback ID.
    # @param [Hash] opts the optional parameters
    # @return [GetAssetPlaybackIDResponse]
    def get_asset_playback_id(asset_id, playback_id, opts = {})
      data, _status_code, _headers = get_asset_playback_id_with_http_info(asset_id, playback_id, opts)
      data
    end

    # Retrieve a playback ID
    # @param asset_id The asset ID.
    # @param playback_id The live stream&#39;s playback ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAssetPlaybackIDResponse, Fixnum, Hash)>] GetAssetPlaybackIDResponse data, response status code and response headers
    def get_asset_playback_id_with_http_info(asset_id, playback_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.get_asset_playback_id ...'
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.get_asset_playback_id"
      end
      # verify the required parameter 'playback_id' is set
      if @api_client.config.client_side_validation && playback_id.nil?
        fail ArgumentError, "Missing the required parameter 'playback_id' when calling AssetsApi.get_asset_playback_id"
      end
      # resource path
      local_var_path = '/video/v1/assets/{ASSET_ID}/playback-ids/{PLAYBACK_ID}'.sub('{' + 'ASSET_ID' + '}', asset_id.to_s).sub('{' + 'PLAYBACK_ID' + '}', playback_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['accessToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetAssetPlaybackIDResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#get_asset_playback_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List assets
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of items to include in the response (default to 25)
    # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60; (default to 1)
    # @return [ListAssetsResponse]
    def list_assets(opts = {})
      data, _status_code, _headers = list_assets_with_http_info(opts)
      data
    end

    # List assets
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of items to include in the response
    # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60;
    # @return [Array<(ListAssetsResponse, Fixnum, Hash)>] ListAssetsResponse data, response status code and response headers
    def list_assets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.list_assets ...'
      end
      # resource path
      local_var_path = '/video/v1/assets'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['accessToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListAssetsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#list_assets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update master access
    # Allows you add temporary access to the master (highest-quality) version of the asset in MP4 format. A URL will be created that can be used to download the master version for 24 hours. After 24 hours Master Access will revert to \"none\". This master version is not optimized for web and not meant to be streamed, only downloaded for purposes like archiving or editing the video offline.
    # @param asset_id The asset ID.
    # @param update_asset_master_access_request 
    # @param [Hash] opts the optional parameters
    # @return [AssetResponse]
    def update_asset_master_access(asset_id, update_asset_master_access_request, opts = {})
      data, _status_code, _headers = update_asset_master_access_with_http_info(asset_id, update_asset_master_access_request, opts)
      data
    end

    # Update master access
    # Allows you add temporary access to the master (highest-quality) version of the asset in MP4 format. A URL will be created that can be used to download the master version for 24 hours. After 24 hours Master Access will revert to \&quot;none\&quot;. This master version is not optimized for web and not meant to be streamed, only downloaded for purposes like archiving or editing the video offline.
    # @param asset_id The asset ID.
    # @param update_asset_master_access_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssetResponse, Fixnum, Hash)>] AssetResponse data, response status code and response headers
    def update_asset_master_access_with_http_info(asset_id, update_asset_master_access_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.update_asset_master_access ...'
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.update_asset_master_access"
      end
      # verify the required parameter 'update_asset_master_access_request' is set
      if @api_client.config.client_side_validation && update_asset_master_access_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_asset_master_access_request' when calling AssetsApi.update_asset_master_access"
      end
      # resource path
      local_var_path = '/video/v1/assets/{ASSET_ID}/master-access'.sub('{' + 'ASSET_ID' + '}', asset_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(update_asset_master_access_request)
      auth_names = ['accessToken']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#update_asset_master_access\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update MP4 support
    # Allows you add or remove mp4 support for assets that were created without it. Currently there are two values supported in this request, `standard` and `none`. `none` means that an asset *does not* have mp4 support, so submitting a request with `mp4_support` set to `none` will delete the mp4 assets from the asset in question.
    # @param asset_id The asset ID.
    # @param update_asset_mp4_support_request 
    # @param [Hash] opts the optional parameters
    # @return [AssetResponse]
    def update_asset_mp4_support(asset_id, update_asset_mp4_support_request, opts = {})
      data, _status_code, _headers = update_asset_mp4_support_with_http_info(asset_id, update_asset_mp4_support_request, opts)
      data
    end

    # Update MP4 support
    # Allows you add or remove mp4 support for assets that were created without it. Currently there are two values supported in this request, &#x60;standard&#x60; and &#x60;none&#x60;. &#x60;none&#x60; means that an asset *does not* have mp4 support, so submitting a request with &#x60;mp4_support&#x60; set to &#x60;none&#x60; will delete the mp4 assets from the asset in question.
    # @param asset_id The asset ID.
    # @param update_asset_mp4_support_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssetResponse, Fixnum, Hash)>] AssetResponse data, response status code and response headers
    def update_asset_mp4_support_with_http_info(asset_id, update_asset_mp4_support_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.update_asset_mp4_support ...'
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.update_asset_mp4_support"
      end
      # verify the required parameter 'update_asset_mp4_support_request' is set
      if @api_client.config.client_side_validation && update_asset_mp4_support_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_asset_mp4_support_request' when calling AssetsApi.update_asset_mp4_support"
      end
      # resource path
      local_var_path = '/video/v1/assets/{ASSET_ID}/mp4-support'.sub('{' + 'ASSET_ID' + '}', asset_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(update_asset_mp4_support_request)
      auth_names = ['accessToken']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#update_asset_mp4_support\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
