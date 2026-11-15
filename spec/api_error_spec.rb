require 'spec_helper'

describe MuxRuby::ApiError do
  describe '#message' do
    it 'keeps a message passed as a string' do
      error = MuxRuby::ApiError.new('Connection timed out')
      expect(error.message).to eq('Connection timed out')
      expect(error.to_s).to eq('Connection timed out')
    end

    it 'keeps a message passed in a hash' do
      error = MuxRuby::ApiError.new(:code => 404, :message => 'Not Found')
      expect(error.message).to eq("Not Found\nHTTP status code: 404")
    end

    it 'uses the default message when none is given' do
      expect(MuxRuby::ApiError.new.message).to eq('Error message: the server returns an error')
    end
  end

  describe 'timed out request' do
    after { Typhoeus::Expectation.clear }

    it 'raises an ApiError that says the connection timed out' do
      Typhoeus.stub(/api\.mux\.com/).and_return(Typhoeus::Response.new(:return_code => :operation_timedout))
      api_client = MuxRuby::ApiClient.new(MuxRuby::Configuration.new)

      expect { api_client.call_api(:GET, '/video/v1/assets') }
        .to raise_error(MuxRuby::ApiError, 'Connection timed out')
    end
  end
end
