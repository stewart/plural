# -*- encoding: utf-8 -*-
require File.expand_path '../lib/plural/version', __FILE__

Gem::Specification.new do |spec|
  spec.name          = "plural"
  spec.version       = Plural::VERSION
  spec.authors       = ["Andrew Stewart"]
  spec.email         = ["andrew@averagestudios.com"]
  spec.description   = %q{A gem to pluralize words.}
  spec.summary       = %q{A gem to pluralize words.}
  spec.homepage      = "https://github.com/stewart/plural"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency  "rspec",   "~> 2.13.0"
end
