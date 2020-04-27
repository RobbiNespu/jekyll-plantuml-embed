# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-plantuml-embed/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-plantuml-embed"
  spec.version       = Jekyll::PlantUML::VERSION
  spec.authors       = ["robbinespu"]
  spec.email         = ["robbinespu@gmail.com"]
  spec.summary       = "A Jekyll plugin to provide plantuml features."
  spec.homepage      = "https://github.com/robbinespu/jekyll-plantuml-embed"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
end
