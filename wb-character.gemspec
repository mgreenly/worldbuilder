# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "wb-character"
  spec.version = "0.1.0"
  spec.authors = ["Michael Greenly"]
  spec.email = ["mgreenly@gmail.com"]

  spec.summary = "WorldBuilder character generator"

  spec.required_ruby_version = ">= 3.2.0"

  spec.files = Dir["bin/**/*", "lib/**/*.rb"]

  spec.bindir = "exe"
  spec.executables = Dir["exe/*"].map { |f| File.basename(f) }

  spec.require_paths = ["lib"]

  spec.metadata["rubygems_mfa_required"] = "true"
end
