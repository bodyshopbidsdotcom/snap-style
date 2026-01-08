# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "snap/style/version"

Gem::Specification.new do |spec|
  spec.name          = "snap-style"
  spec.version       = Snap::Style::VERSION
  spec.authors       = ["Dianna K. Egan"]
  spec.email         = ["dianna.egan@snapsheet.me"]

  spec.summary       = %q{Snapsheet private style gem.}
  spec.description   = %q{This was created to enforce a consistent style across many projects.}
  spec.homepage      = "https://github.com/bodyshopbidsdotcom/snap-style"
  spec.license       = nil

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir[
      "lib/**/*",
      "README.md",
      "CHANGELOG.md",
      "rubocop/**/*.yml"
    ]
  end
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 3.3'

  spec.add_dependency "rubocop", "~> 1.75"
  spec.add_dependency "rubocop-rails", "~> 2.23"

  spec.add_development_dependency "bundler", "~> 2.5"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.13"

  if spec.respond_to?(:metadata)
    spec.metadata['github_repo'] = 'https://github.com/bodyshopbidsdotcom/snap-style'
    spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/bodyshopbidsdotcom'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end
end
