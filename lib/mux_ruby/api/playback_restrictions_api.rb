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
  class PlaybackRestrictionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Playback Restriction
    # Create a new Playback Restriction.
    # @param create_playback_restriction_request [CreatePlaybackRestrictionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [PlaybackRestriction]
    def create_playback_restriction(create_playback_restriction_request, opts = {})
      data, _status_code, _headers = create_playback_restriction_with_http_info(create_playback_restriction_request, opts)
      data
    end

    # Create a Playback Restriction
    # Create a new Playback Restriction.
    # @param create_playback_restriction_request [CreatePlaybackRestrictionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlaybackRestriction, Integer, Hash)>] PlaybackRestriction data, response status code and response headers
    def create_playback_restriction_with_http_info(create_playback_restriction_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlaybackRestrictionsApi.create_playback_restriction ...'
      end
      # verify the required parameter 'create_playback_restriction_request' is set
      if @api_client.config.client_side_validation && create_playback_restriction_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_playback_restriction_request' when calling PlaybackRestrictionsApi.create_playback_restriction"
      end
      # resource path
      local_var_path = '/video/v1/playback-restrictions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_playback_restriction_request)

      # return_type
      return_type = opts[:debug_return_type] || 'PlaybackRestriction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"PlaybackRestrictionsApi.create_playback_restriction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlaybackRestrictionsApi#create_playback_restriction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Playback Restriction
    # Deletes a single Playback Restriction.
    # @param playback_restriction_id [String] ID of the Playback Restriction.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_playback_restriction(playback_restriction_id, opts = {})
      delete_playback_restriction_with_http_info(playback_restriction_id, opts)
      nil
    end

    # Delete a Playback Restriction
    # Deletes a single Playback Restriction.
    # @param playback_restriction_id [String] ID of the Playback Restriction.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_playback_restriction_with_http_info(playback_restriction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlaybackRestrictionsApi.delete_playback_restriction ...'
      end
      # verify the required parameter 'playback_restriction_id' is set
      if @api_client.config.client_side_validation && playback_restriction_id.nil?
        fail ArgumentError, "Missing the required parameter 'playback_restriction_id' when calling PlaybackRestrictionsApi.delete_playback_restriction"
      end
      # resource path
      local_var_path = '/video/v1/playback-restrictions/{PLAYBACK_RESTRICTION_ID}'.sub('{' + 'PLAYBACK_RESTRICTION_ID' + '}', CGI.escape(playback_restriction_id.to_s))

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
        :operation => :"PlaybackRestrictionsApi.delete_playback_restriction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlaybackRestrictionsApi#delete_playback_restriction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a Playback Restriction
    # Retrieves a Playback Restriction associated with the unique identifier.
    # @param playback_restriction_id [String] ID of the Playback Restriction.
    # @param [Hash] opts the optional parameters
    # @return [PlaybackRestriction]
    def get_playback_restriction(playback_restriction_id, opts = {})
      data, _status_code, _headers = get_playback_restriction_with_http_info(playback_restriction_id, opts)
      data
    end

    # Retrieve a Playback Restriction
    # Retrieves a Playback Restriction associated with the unique identifier.
    # @param playback_restriction_id [String] ID of the Playback Restriction.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlaybackRestriction, Integer, Hash)>] PlaybackRestriction data, response status code and response headers
    def get_playback_restriction_with_http_info(playback_restriction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlaybackRestrictionsApi.get_playback_restriction ...'
      end
      # verify the required parameter 'playback_restriction_id' is set
      if @api_client.config.client_side_validation && playback_restriction_id.nil?
        fail ArgumentError, "Missing the required parameter 'playback_restriction_id' when calling PlaybackRestrictionsApi.get_playback_restriction"
      end
      # resource path
      local_var_path = '/video/v1/playback-restrictions/{PLAYBACK_RESTRICTION_ID}'.sub('{' + 'PLAYBACK_RESTRICTION_ID' + '}', CGI.escape(playback_restriction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PlaybackRestriction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"PlaybackRestrictionsApi.get_playback_restriction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlaybackRestrictionsApi#get_playback_restriction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Playback Restrictions
    # Returns a list of all Playback Restrictions.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60; (default to 1)
    # @option opts [Integer] :limit Number of items to include in the response (default to 25)
    # @return [Array<PlaybackRestriction>]
    def list_playback_restrictions(opts = {})
      data, _status_code, _headers = list_playback_restrictions_with_http_info(opts)
      data
    end

    # List Playback Restrictions
    # Returns a list of all Playback Restrictions.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60;
    # @option opts [Integer] :limit Number of items to include in the response
    # @return [Array<(Array<PlaybackRestriction>, Integer, Hash)>] Array<PlaybackRestriction> data, response status code and response headers
    def list_playback_restrictions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlaybackRestrictionsApi.list_playback_restrictions ...'
      end
      # resource path
      local_var_path = '/video/v1/playback-restrictions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<PlaybackRestriction>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"PlaybackRestrictionsApi.list_playback_restrictions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlaybackRestrictionsApi#list_playback_restrictions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the Referrer Playback Restriction
    # Allows you to modify the list of domians or change how Mux validates playback requests without the `Referer` HTTP header. The Referrer restriction fully replaces the old list with this new list of domains.
    # @param playback_restriction_id [String] ID of the Playback Restriction.
    # @param body [ReferrerDomainRestriction] 
    # @param [Hash] opts the optional parameters
    # @return [PlaybackRestriction]
    def update_referrer_domain_restriction(playback_restriction_id, body, opts = {})
      data, _status_code, _headers = update_referrer_domain_restriction_with_http_info(playback_restriction_id, body, opts)
      data
    end

    # Update the Referrer Playback Restriction
    # Allows you to modify the list of domians or change how Mux validates playback requests without the &#x60;Referer&#x60; HTTP header. The Referrer restriction fully replaces the old list with this new list of domains.
    # @param playback_restriction_id [String] ID of the Playback Restriction.
    # @param body [ReferrerDomainRestriction] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlaybackRestriction, Integer, Hash)>] PlaybackRestriction data, response status code and response headers
    def update_referrer_domain_restriction_with_http_info(playback_restriction_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlaybackRestrictionsApi.update_referrer_domain_restriction ...'
      end
      # verify the required parameter 'playback_restriction_id' is set
      if @api_client.config.client_side_validation && playback_restriction_id.nil?
        fail ArgumentError, "Missing the required parameter 'playback_restriction_id' when calling PlaybackRestrictionsApi.update_referrer_domain_restriction"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PlaybackRestrictionsApi.update_referrer_domain_restriction"
      end
      # resource path
      local_var_path = '/video/v1/playback-restrictions/{PLAYBACK_RESTRICTION_ID}/referrer'.sub('{' + 'PLAYBACK_RESTRICTION_ID' + '}', CGI.escape(playback_restriction_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'PlaybackRestriction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"PlaybackRestrictionsApi.update_referrer_domain_restriction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlaybackRestrictionsApi#update_referrer_domain_restriction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
