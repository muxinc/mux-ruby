require 'spec_helper'

describe MuxRuby::Webhook do
  describe ".verify_header" do
    let(:payload) { "{\"test\":\"body\"}" }
    let(:secret) { "SuperSecret123" }
    let(:valid_time_sec) { 1565125718 }
    let(:valid_header_at_the_time) { "t=1565125718,v1=854ece4c22acef7c66b57d4e504153bc512595e8e9c772ece2a68150548c19a7" }

    context "with a malformatted header value" do
      it "should raise a SignatureVerificationError" do
        expect do
          MuxRuby::Webhook.verify_header(payload, 'abadheadervalue', secret)
        end.to raise_error(MuxRuby::SignatureVerificationError, "Unable to extract timestamp and signatures from header")
      end
    end

    context "with the wrong signature scheme" do
      it "should raise a SignatureVerificationError" do
        expect do
          MuxRuby::Webhook.verify_header(payload, "t=1565125718,v2=854ece4c22a", secret)
        end.to raise_error(MuxRuby::SignatureVerificationError, "No signatures found with expected scheme v1")
      end
    end

    context "with the wrong secret" do
      it "should raise a SignatureVerificationError" do
        expect do
          MuxRuby::Webhook.verify_header(payload, valid_header_at_the_time, "wrong-secret")
        end.to raise_error(MuxRuby::SignatureVerificationError, "No signatures found matching the expected signature for payload")
      end
    end

    context "with everything correct except outside the tolerance time" do
      it "should raise a SignatureVerificationError" do
        expect do
          MuxRuby::Webhook.verify_header(payload, valid_header_at_the_time, secret)
        end.to raise_error(MuxRuby::SignatureVerificationError, "Timestamp outside the tolerance zone")
      end
    end

    context "with an actual valid signature" do

      it "should raise a SignatureVerificationError" do
        valid_time = DateTime.strptime(valid_time_sec.to_s, "%s").to_time
        expect(Time).to receive(:now).and_return(valid_time)
        expect(
          MuxRuby::Webhook.verify_header(payload, valid_header_at_the_time, secret)
        ).to eq true
      end
    end
  end
end
