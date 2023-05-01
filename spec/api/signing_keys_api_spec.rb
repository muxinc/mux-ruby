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

# Unit tests for MuxRuby::SigningKeysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SigningKeysApi' do
  before do
    # run before each test
    @api_instance = MuxRuby::SigningKeysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SigningKeysApi' do
    it 'should create an instance of SigningKeysApi' do
      expect(@api_instance).to be_instance_of(MuxRuby::SigningKeysApi)
    end
  end

  # unit tests for create_signing_key
  # Create a signing key
  # Creates a new signing key pair. When creating a new signing key, the API will generate a 2048-bit RSA key-pair and return the private key and a generated key-id; the public key will be stored at Mux to validate signed tokens.
  # @param [Hash] opts the optional parameters
  # @return [SigningKeyResponse]
  describe 'create_signing_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_signing_key
  # Delete a signing key
  # Deletes an existing signing key. Use with caution, as this will invalidate any existing signatures and no JWTs can be signed using the key again.
  # @param signing_key_id The ID of the signing key.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_signing_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_signing_key
  # Retrieve a signing key
  # Retrieves the details of a signing key that has previously been created. Supply the unique signing key ID that was returned from your previous request, and Mux will return the corresponding signing key information. **The private key is not returned in this response.** 
  # @param signing_key_id The ID of the signing key.
  # @param [Hash] opts the optional parameters
  # @return [SigningKeyResponse]
  describe 'get_signing_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_signing_keys
  # List signing keys
  # Returns a list of signing keys.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of items to include in the response
  # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60;
  # @return [ListSigningKeysResponse]
  describe 'list_signing_keys test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end