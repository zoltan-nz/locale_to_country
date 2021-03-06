# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'locale_to_country/version'

Gem::Specification.new do |spec|
  spec.name          = "locale_to_country"
  spec.version       = LocaleToCountry::VERSION
  spec.authors       = ["Zoltan"]
  spec.email         = ["zdebre@gmail.com"]
  spec.summary       = 'Convert timezone locale info to country'
  spec.description   = ''
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "tzinfo"
  spec.add_development_dependency "tzinfo-data"
  spec.add_development_dependency 'geocoder'
end
