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
  spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 1.14.0"
  spec.add_dependency "rubocop-rails", "~> 2.5.2"

  spec.add_development_dependency "bundler", "~> 1.17.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  if spec.respond_to?(:metadata)
    spec.metadata['github_repo'] = 'https://github.com/bodyshopbidsdotcom/snap-style'
    spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/bodyshopbidsdotcom'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end
end
