# frozen_string_literal: true

require_relative "lib/wb/version"

Gem::Specification.new do |spec|
  spec.name = "worldbuilder"
  # spec.version = File.read(File.expand_path('../lib/wb/VERSION', __FILE__)).strip
  spec.version = Wb::VERSION
  spec.authors = ["Michael Greenly"]
  spec.email = ["mgreenly@gmail.com"]

  spec.summary = "World Builder library"

  spec.required_ruby_version = ">= 3.2.0"

  spec.files = Dir["bin/**/*", "lib/**/*.rb"]

  spec.bindir = "exe"
  spec.executables = Dir["exe/*"].map { |f| File.basename(f) }

  spec.require_paths = ["lib"]

  spec.metadata["rubygems_mfa_required"] = "true"
end
