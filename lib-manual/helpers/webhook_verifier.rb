# frozen_string_literal: true

require 'openssl'
require 'securecompare'

module MuxRuby
  module Helpers
    class WebhookVerifier
      DEFAULT_TOLERANCE = 300
      HEADER_SCHEMES = [:v1].freeze

      # Initializer.
      #
      # @param [String] secret the webhook secret from your Mux control panel
      # @param [Integer] tolerance the signature timing tolerance, in seconds (generally leave as is)
      # @param [Array<Symbol>] header_schemes the list of accepted header schemes for this verifier
      def initialize(secret: nil, tolerance: DEFAULT_TOLERANCE, header_schemes: [:v1])
        raise "secret '#{secret.inspect}' must be a String" unless secret.is_a?(String)
        raise "tolerance '#{tolerance.inspect}' must be a positive number." \
          unless tolerance.is_a?(Integer) && tolerance > 0
        raise "header schemes '#{header_schemes.inspect}' must all be in HEADER_SCHEMES: '#{HEADER_SCHEMES.inspect}'" \
          unless header_schemes.all? { |h| HEADER_SCHEMES.include?(h) }
            
        @secret = secret.dup
        @tolerance = tolerance
        @header_schemes = header_schemes.map(&:to_s).sort.uniq.reverse
      end

      # Initializer.
      #
      # @param [String] request_body the raw, unmodified body of the request
      # @param [String] header the Mux-Signature header
      # @param [Time] current_timestamp (for test purposes) the current time expected for this webhook (defaults to `Time.utc`)
      # @return [Boolean] true if webhook is verified; false otherwise
      def verify(request_body:, header:, current_timestamp: Time.now.getutc)
        header_parts = self.kv_from_header(header)

        timestamp = header_parts['t'].to_i
        scheme_used = @header_schemes.detect { |scheme| !header_parts[scheme].nil? }
        mux_signature = header_parts[scheme_used]

        if timestamp.nil? || mux_signature.nil?
          false
        else
          case scheme_used
          when 'v1'
            expected_signature = self.compute_v1_signature("#{timestamp}.#{request_body}")
            if SecureCompare.compare(expected_signature, mux_signature)
              delta = current_timestamp.to_i - timestamp

              if (delta <= @tolerance)
                true
              else
                false
              end
            else
              false
            end
          else
            warn "Unhandled *but recognized* Mux signature format '#{scheme_used}'. Please contact Mux."
            false
          end
        end
      end

      private
      def kv_from_header(header)
        Hash[header.strip.gsub(/^Mux-Signature:/, "").strip.split(",").map { |tup| tup.split("=") }]
      end

      def compute_v1_signature(payload)
        OpenSSL::HMAC.hexdigest("SHA256", @secret, payload)
      end
    end
  end
end
