# coding: utf-8
#
# octiron-test
# https://github.com/jfinkhaeuser/octiron-test
#
# Copyright (c) 2016 Jens Finkhaeuser and other octiron contributors.
# All rights reserved.
#

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octiron-test/version'

# rubocop:disable Style/UnneededPercentQ
# rubocop:disable Style/SpaceAroundOperators
Gem::Specification.new do |spec|
  spec.name          = "octiron-test"
  spec.version       = Octiron::EventDefinitions::Test::VERSION
  spec.authors       = ["Jens Finkhaeuser"]
  spec.email         = ["jens@finkhaeuser.de"]
  spec.description   = %q(
   The gem provides event definitions for event classes typically useful in
   automated software testing. The main event class is one encapsulating test
   failures/errors.
  )
  spec.summary       = %q(
    An octiron event interface for software test cases
  )
  spec.homepage      = "https://github.com/jfinkhaeuser/octiron-test"
  spec.license       = "MITNFA"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0'

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rubocop", "~> 0.46"
  spec.add_development_dependency "rake", "~> 11.3"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "simplecov", "~> 0.12"
  spec.add_development_dependency "yard", "~> 0.9"
end
# rubocop:enable Style/SpaceAroundOperators
# rubocop:enable Style/UnneededPercentQ
