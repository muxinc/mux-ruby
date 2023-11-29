=begin
#Mux API

#Mux is how developers build online video. This API encompasses both Mux Video and Mux Data functionality to help you build your video-related projects better and faster than ever before.

The version of the OpenAPI document: v1
Contact: devex@mux.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'cgi'

module MuxRuby
  class SpacesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a space
    # Create a new space. Spaces are used to build [real-time video applications.](https://mux.com/real-time-video)
    # @param create_space_request [CreateSpaceRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SpaceResponse]
    def create_space(create_space_request, opts = {})
      data, _status_code, _headers = create_space_with_http_info(create_space_request, opts)
      data
    end

    # Create a space
    # Create a new space. Spaces are used to build [real-time video applications.](https://mux.com/real-time-video)
    # @param create_space_request [CreateSpaceRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SpaceResponse, Integer, Hash)>] SpaceResponse data, response status code and response headers
    def create_space_with_http_info(create_space_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.create_space ...'
      end
      # verify the required parameter 'create_space_request' is set
      if @api_client.config.client_side_validation && create_space_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_space_request' when calling SpacesApi.create_space"
      end
      # resource path
      local_var_path = '/video/v1/spaces'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_space_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SpaceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"SpacesApi.create_space",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpacesApi#create_space\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a space broadcast
    # Creates a new broadcast. Broadcasts are used to create composited versions of your space, which can be broadcast to live streams. **Note:** By default only a single broadcast destination can be specified. Contact Mux support if you need more.
    # @param space_id [String] The space ID.
    # @param create_broadcast_request [CreateBroadcastRequest] 
    # @param [Hash] opts the optional parameters
    # @return [BroadcastResponse]
    def create_space_broadcast(space_id, create_broadcast_request, opts = {})
      data, _status_code, _headers = create_space_broadcast_with_http_info(space_id, create_broadcast_request, opts)
      data
    end

    # Create a space broadcast
    # Creates a new broadcast. Broadcasts are used to create composited versions of your space, which can be broadcast to live streams. **Note:** By default only a single broadcast destination can be specified. Contact Mux support if you need more.
    # @param space_id [String] The space ID.
    # @param create_broadcast_request [CreateBroadcastRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BroadcastResponse, Integer, Hash)>] BroadcastResponse data, response status code and response headers
    def create_space_broadcast_with_http_info(space_id, create_broadcast_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.create_space_broadcast ...'
      end
      # verify the required parameter 'space_id' is set
      if @api_client.config.client_side_validation && space_id.nil?
        fail ArgumentError, "Missing the required parameter 'space_id' when calling SpacesApi.create_space_broadcast"
      end
      # verify the required parameter 'create_broadcast_request' is set
      if @api_client.config.client_side_validation && create_broadcast_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_broadcast_request' when calling SpacesApi.create_space_broadcast"
      end
      # resource path
      local_var_path = '/video/v1/spaces/{SPACE_ID}/broadcasts'.sub('{' + 'SPACE_ID' + '}', CGI.escape(space_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_broadcast_request)

      # return_type
      return_type = opts[:debug_return_type] || 'BroadcastResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"SpacesApi.create_space_broadcast",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpacesApi#create_space_broadcast\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a space
    # Deletes a space. Spaces can only be deleted when `idle`.
    # @param space_id [String] The space ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_space(space_id, opts = {})
      delete_space_with_http_info(space_id, opts)
      nil
    end

    # Delete a space
    # Deletes a space. Spaces can only be deleted when &#x60;idle&#x60;.
    # @param space_id [String] The space ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_space_with_http_info(space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.delete_space ...'
      end
      # verify the required parameter 'space_id' is set
      if @api_client.config.client_side_validation && space_id.nil?
        fail ArgumentError, "Missing the required parameter 'space_id' when calling SpacesApi.delete_space"
      end
      # resource path
      local_var_path = '/video/v1/spaces/{SPACE_ID}'.sub('{' + 'SPACE_ID' + '}', CGI.escape(space_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"SpacesApi.delete_space",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpacesApi#delete_space\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a space broadcast
    # Deletes a single broadcast of a specific space. Broadcasts can only be deleted when `idle`.
    # @param space_id [String] The space ID.
    # @param broadcast_id [String] The broadcast ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_space_broadcast(space_id, broadcast_id, opts = {})
      delete_space_broadcast_with_http_info(space_id, broadcast_id, opts)
      nil
    end

    # Delete a space broadcast
    # Deletes a single broadcast of a specific space. Broadcasts can only be deleted when &#x60;idle&#x60;.
    # @param space_id [String] The space ID.
    # @param broadcast_id [String] The broadcast ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_space_broadcast_with_http_info(space_id, broadcast_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.delete_space_broadcast ...'
      end
      # verify the required parameter 'space_id' is set
      if @api_client.config.client_side_validation && space_id.nil?
        fail ArgumentError, "Missing the required parameter 'space_id' when calling SpacesApi.delete_space_broadcast"
      end
      # verify the required parameter 'broadcast_id' is set
      if @api_client.config.client_side_validation && broadcast_id.nil?
        fail ArgumentError, "Missing the required parameter 'broadcast_id' when calling SpacesApi.delete_space_broadcast"
      end
      # resource path
      local_var_path = '/video/v1/spaces/{SPACE_ID}/broadcasts/{BROADCAST_ID}'.sub('{' + 'SPACE_ID' + '}', CGI.escape(space_id.to_s)).sub('{' + 'BROADCAST_ID' + '}', CGI.escape(broadcast_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"SpacesApi.delete_space_broadcast",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpacesApi#delete_space_broadcast\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a space
    # Retrieves the details of a space that has previously been created. Supply the unique space ID that was returned from your create space request, and Mux will return the information about the corresponding space. The same information is returned when creating a space.
    # @param space_id [String] The space ID.
    # @param [Hash] opts the optional parameters
    # @return [SpaceResponse]
    def get_space(space_id, opts = {})
      data, _status_code, _headers = get_space_with_http_info(space_id, opts)
      data
    end

    # Retrieve a space
    # Retrieves the details of a space that has previously been created. Supply the unique space ID that was returned from your create space request, and Mux will return the information about the corresponding space. The same information is returned when creating a space.
    # @param space_id [String] The space ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SpaceResponse, Integer, Hash)>] SpaceResponse data, response status code and response headers
    def get_space_with_http_info(space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.get_space ...'
      end
      # verify the required parameter 'space_id' is set
      if @api_client.config.client_side_validation && space_id.nil?
        fail ArgumentError, "Missing the required parameter 'space_id' when calling SpacesApi.get_space"
      end
      # resource path
      local_var_path = '/video/v1/spaces/{SPACE_ID}'.sub('{' + 'SPACE_ID' + '}', CGI.escape(space_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SpaceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"SpacesApi.get_space",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpacesApi#get_space\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve space broadcast
    # Retrieves the details of a broadcast of a specific space.
    # @param space_id [String] The space ID.
    # @param broadcast_id [String] The broadcast ID.
    # @param [Hash] opts the optional parameters
    # @return [BroadcastResponse]
    def get_space_broadcast(space_id, broadcast_id, opts = {})
      data, _status_code, _headers = get_space_broadcast_with_http_info(space_id, broadcast_id, opts)
      data
    end

    # Retrieve space broadcast
    # Retrieves the details of a broadcast of a specific space.
    # @param space_id [String] The space ID.
    # @param broadcast_id [String] The broadcast ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BroadcastResponse, Integer, Hash)>] BroadcastResponse data, response status code and response headers
    def get_space_broadcast_with_http_info(space_id, broadcast_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.get_space_broadcast ...'
      end
      # verify the required parameter 'space_id' is set
      if @api_client.config.client_side_validation && space_id.nil?
        fail ArgumentError, "Missing the required parameter 'space_id' when calling SpacesApi.get_space_broadcast"
      end
      # verify the required parameter 'broadcast_id' is set
      if @api_client.config.client_side_validation && broadcast_id.nil?
        fail ArgumentError, "Missing the required parameter 'broadcast_id' when calling SpacesApi.get_space_broadcast"
      end
      # resource path
      local_var_path = '/video/v1/spaces/{SPACE_ID}/broadcasts/{BROADCAST_ID}'.sub('{' + 'SPACE_ID' + '}', CGI.escape(space_id.to_s)).sub('{' + 'BROADCAST_ID' + '}', CGI.escape(broadcast_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BroadcastResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"SpacesApi.get_space_broadcast",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpacesApi#get_space_broadcast\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List spaces
    # List all spaces in the current environment.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of items to include in the response (default to 25)
    # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60; (default to 1)
    # @return [ListSpacesResponse]
    def list_spaces(opts = {})
      data, _status_code, _headers = list_spaces_with_http_info(opts)
      data
    end

    # List spaces
    # List all spaces in the current environment.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of items to include in the response
    # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60;
    # @return [Array<(ListSpacesResponse, Integer, Hash)>] ListSpacesResponse data, response status code and response headers
    def list_spaces_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.list_spaces ...'
      end
      # resource path
      local_var_path = '/video/v1/spaces'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListSpacesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"SpacesApi.list_spaces",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpacesApi#list_spaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start a space broadcast
    # Starts broadcasting a space to the associated destination. Broadcasts can only be started when the space is `active` (when there are participants connected).
    # @param space_id [String] The space ID.
    # @param broadcast_id [String] The broadcast ID.
    # @param [Hash] opts the optional parameters
    # @return [StartSpaceBroadcastResponse]
    def start_space_broadcast(space_id, broadcast_id, opts = {})
      data, _status_code, _headers = start_space_broadcast_with_http_info(space_id, broadcast_id, opts)
      data
    end

    # Start a space broadcast
    # Starts broadcasting a space to the associated destination. Broadcasts can only be started when the space is &#x60;active&#x60; (when there are participants connected).
    # @param space_id [String] The space ID.
    # @param broadcast_id [String] The broadcast ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StartSpaceBroadcastResponse, Integer, Hash)>] StartSpaceBroadcastResponse data, response status code and response headers
    def start_space_broadcast_with_http_info(space_id, broadcast_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.start_space_broadcast ...'
      end
      # verify the required parameter 'space_id' is set
      if @api_client.config.client_side_validation && space_id.nil?
        fail ArgumentError, "Missing the required parameter 'space_id' when calling SpacesApi.start_space_broadcast"
      end
      # verify the required parameter 'broadcast_id' is set
      if @api_client.config.client_side_validation && broadcast_id.nil?
        fail ArgumentError, "Missing the required parameter 'broadcast_id' when calling SpacesApi.start_space_broadcast"
      end
      # resource path
      local_var_path = '/video/v1/spaces/{SPACE_ID}/broadcasts/{BROADCAST_ID}/start'.sub('{' + 'SPACE_ID' + '}', CGI.escape(space_id.to_s)).sub('{' + 'BROADCAST_ID' + '}', CGI.escape(broadcast_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StartSpaceBroadcastResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"SpacesApi.start_space_broadcast",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpacesApi#start_space_broadcast\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Stop a space broadcast
    # Stops broadcasting a space, causing the destination live stream to become idle. This API also automatically calls `complete` on the destination live stream. Broadcasts are also automatically stopped when a space becomes idle.
    # @param space_id [String] The space ID.
    # @param broadcast_id [String] The broadcast ID.
    # @param [Hash] opts the optional parameters
    # @return [StopSpaceBroadcastResponse]
    def stop_space_broadcast(space_id, broadcast_id, opts = {})
      data, _status_code, _headers = stop_space_broadcast_with_http_info(space_id, broadcast_id, opts)
      data
    end

    # Stop a space broadcast
    # Stops broadcasting a space, causing the destination live stream to become idle. This API also automatically calls &#x60;complete&#x60; on the destination live stream. Broadcasts are also automatically stopped when a space becomes idle.
    # @param space_id [String] The space ID.
    # @param broadcast_id [String] The broadcast ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StopSpaceBroadcastResponse, Integer, Hash)>] StopSpaceBroadcastResponse data, response status code and response headers
    def stop_space_broadcast_with_http_info(space_id, broadcast_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.stop_space_broadcast ...'
      end
      # verify the required parameter 'space_id' is set
      if @api_client.config.client_side_validation && space_id.nil?
        fail ArgumentError, "Missing the required parameter 'space_id' when calling SpacesApi.stop_space_broadcast"
      end
      # verify the required parameter 'broadcast_id' is set
      if @api_client.config.client_side_validation && broadcast_id.nil?
        fail ArgumentError, "Missing the required parameter 'broadcast_id' when calling SpacesApi.stop_space_broadcast"
      end
      # resource path
      local_var_path = '/video/v1/spaces/{SPACE_ID}/broadcasts/{BROADCAST_ID}/stop'.sub('{' + 'SPACE_ID' + '}', CGI.escape(space_id.to_s)).sub('{' + 'BROADCAST_ID' + '}', CGI.escape(broadcast_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StopSpaceBroadcastResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"SpacesApi.stop_space_broadcast",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpacesApi#stop_space_broadcast\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
