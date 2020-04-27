# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-plantuml/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-plantuml-embed"
  spec.version       = Jekyll::PlantUML::VERSION
  spec.authors       = ["robbinespu"]
  spec.email         = ["robbinespu@gmail.com"]
  spec.summary       = "A Jekyll plugin to provide powerful supports for table, mathjax, plantuml, etc."
  spec.homepage      = "https://github.com/robbinespu/jekyll-plantuml"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_runtime_dependency "nokogiri", "~> 1.6"

  spec.add_development_dependency 'jekyll', '~> 4.0', '>= 4.0.0'
  spec.add_development_dependency "bundler", "~> 2.1.4"
end
