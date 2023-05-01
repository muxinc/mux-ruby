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
  class SigningKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a signing key
    # Creates a new signing key pair. When creating a new signing key, the API will generate a 2048-bit RSA key-pair and return the private key and a generated key-id; the public key will be stored at Mux to validate signed tokens.
    # @param [Hash] opts the optional parameters
    # @return [SigningKeyResponse]
    def create_signing_key(opts = {})
      data, _status_code, _headers = create_signing_key_with_http_info(opts)
      data
    end

    # Create a signing key
    # Creates a new signing key pair. When creating a new signing key, the API will generate a 2048-bit RSA key-pair and return the private key and a generated key-id; the public key will be stored at Mux to validate signed tokens.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SigningKeyResponse, Integer, Hash)>] SigningKeyResponse data, response status code and response headers
    def create_signing_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SigningKeysApi.create_signing_key ...'
      end
      # resource path
      local_var_path = '/system/v1/signing-keys'

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
      return_type = opts[:debug_return_type] || 'SigningKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"SigningKeysApi.create_signing_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SigningKeysApi#create_signing_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a signing key
    # Deletes an existing signing key. Use with caution, as this will invalidate any existing signatures and no JWTs can be signed using the key again.
    # @param signing_key_id [String] The ID of the signing key.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_signing_key(signing_key_id, opts = {})
      delete_signing_key_with_http_info(signing_key_id, opts)
      nil
    end

    # Delete a signing key
    # Deletes an existing signing key. Use with caution, as this will invalidate any existing signatures and no JWTs can be signed using the key again.
    # @param signing_key_id [String] The ID of the signing key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_signing_key_with_http_info(signing_key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SigningKeysApi.delete_signing_key ...'
      end
      # verify the required parameter 'signing_key_id' is set
      if @api_client.config.client_side_validation && signing_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'signing_key_id' when calling SigningKeysApi.delete_signing_key"
      end
      # resource path
      local_var_path = '/system/v1/signing-keys/{SIGNING_KEY_ID}'.sub('{' + 'SIGNING_KEY_ID' + '}', CGI.escape(signing_key_id.to_s))

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
        :operation => :"SigningKeysApi.delete_signing_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SigningKeysApi#delete_signing_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a signing key
    # Retrieves the details of a signing key that has previously been created. Supply the unique signing key ID that was returned from your previous request, and Mux will return the corresponding signing key information. **The private key is not returned in this response.** 
    # @param signing_key_id [String] The ID of the signing key.
    # @param [Hash] opts the optional parameters
    # @return [SigningKeyResponse]
    def get_signing_key(signing_key_id, opts = {})
      data, _status_code, _headers = get_signing_key_with_http_info(signing_key_id, opts)
      data
    end

    # Retrieve a signing key
    # Retrieves the details of a signing key that has previously been created. Supply the unique signing key ID that was returned from your previous request, and Mux will return the corresponding signing key information. **The private key is not returned in this response.** 
    # @param signing_key_id [String] The ID of the signing key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SigningKeyResponse, Integer, Hash)>] SigningKeyResponse data, response status code and response headers
    def get_signing_key_with_http_info(signing_key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SigningKeysApi.get_signing_key ...'
      end
      # verify the required parameter 'signing_key_id' is set
      if @api_client.config.client_side_validation && signing_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'signing_key_id' when calling SigningKeysApi.get_signing_key"
      end
      # resource path
      local_var_path = '/system/v1/signing-keys/{SIGNING_KEY_ID}'.sub('{' + 'SIGNING_KEY_ID' + '}', CGI.escape(signing_key_id.to_s))

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
      return_type = opts[:debug_return_type] || 'SigningKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"SigningKeysApi.get_signing_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SigningKeysApi#get_signing_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List signing keys
    # Returns a list of signing keys.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of items to include in the response (default to 25)
    # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60; (default to 1)
    # @return [ListSigningKeysResponse]
    def list_signing_keys(opts = {})
      data, _status_code, _headers = list_signing_keys_with_http_info(opts)
      data
    end

    # List signing keys
    # Returns a list of signing keys.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of items to include in the response
    # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60;
    # @return [Array<(ListSigningKeysResponse, Integer, Hash)>] ListSigningKeysResponse data, response status code and response headers
    def list_signing_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SigningKeysApi.list_signing_keys ...'
      end
      # resource path
      local_var_path = '/system/v1/signing-keys'

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
      return_type = opts[:debug_return_type] || 'ListSigningKeysResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"SigningKeysApi.list_signing_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SigningKeysApi#list_signing_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end