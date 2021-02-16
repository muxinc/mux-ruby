# -*- encoding: utf-8 -*-

=begin
# Mux Ruby - Copyright 2019 Mux Inc.
# NOTE: This file is auto generated. Do not edit this file manually.
=end

$:.push File.expand_path("../lib", __FILE__)
require "mux_ruby/version"

Gem::Specification.new do |s|
  s.name        = "mux_ruby"
  s.version     = MuxRuby::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mux SDK Developers"]
  s.email       = ["sdks@mux.com"]
  s.homepage    = "https://mux.com"
  s.summary     = "Ruby API wrapper for Mux"
  s.description = "Ruby API wrapper for Mux"
  s.license     = "MIT"
  s.required_ruby_version = ">= 1.9"
  s.metadata    = { "source_code_uri" => "https://github.com/muxinc/mux-ruby" }

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.12'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
