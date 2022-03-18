require 'openssl'
require 'json'
require 'time'

require 'mux_ruby'

describe MuxRuby::Helpers::WebhookVerifier do
  it "should work on the happy path" do
    # server/client shared secret
    shared_secret = "abcdabcdabcdabcd"

    # mocking the server
    timestamp = Time.now.getutc.to_i
    request_body = JSON.generate({ 'foo' => 1, 'bar' => 2, 'baz' => { 'quux': 10, 'quuux': 20 }})

    signed_payload = "#{timestamp}.#{request_body}"
    mux_v1_signature = OpenSSL::HMAC.hexdigest("SHA256", shared_secret, signed_payload)
    header = "t=#{timestamp},v1=#{mux_v1_signature}"

    # everything below here is what a consuming application would do
    verifier = MuxRuby::Helpers::WebhookVerifier.new(secret: shared_secret)

    expect(verifier.verify(request_body: request_body, header: header)).to eq(true)
  end

  it "should not work with an old timestamp" do
    # server/client shared secret
    shared_secret = "abcdabcdabcdabcd"

    # mocking the server
    timestamp = Time.now.getutc.to_i - 1200
    request_body = JSON.generate({ 'foo' => 1, 'bar' => 2, 'baz' => { 'quux': 10, 'quuux': 20 }})

    signed_payload = "#{timestamp}.#{request_body}"
    mux_v1_signature = OpenSSL::HMAC.hexdigest("SHA256", shared_secret, signed_payload)
    header = "t=#{timestamp},v1=#{mux_v1_signature}"

    # everything below here is what a consuming application would do
    verifier = MuxRuby::Helpers::WebhookVerifier.new(secret: shared_secret)

    expect(verifier.verify(request_body: request_body, header: header)).to eq(false)
  end

  it "should not work with a bad signature" do
    # server/client shared secret
    shared_secret = "abcdabcdabcdabcd"

    # mocking the server
    timestamp = Time.now.getutc.to_i
    request_body = JSON.generate({ 'foo' => 1, 'bar' => 2, 'baz' => { 'quux': 10, 'quuux': 20 }})
    spoofed_request_body = JSON.generate({ 'evil_bit' => true })

    signed_payload = "#{timestamp}.#{request_body}"
    mux_v1_signature = OpenSSL::HMAC.hexdigest("SHA256", shared_secret, signed_payload)
    header = "t=#{timestamp},v1=#{mux_v1_signature}"

    # everything below here is what a consuming application would do
    verifier = MuxRuby::Helpers::WebhookVerifier.new(secret: shared_secret)

    expect(verifier.verify(request_body: spoofed_request_body, header: header)).to eq(false)
  end
end
