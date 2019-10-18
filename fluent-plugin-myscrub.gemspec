lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fluent/plugin/myscrub/version"

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-myscrub"
  spec.version       = Fluent::Plugin::Myscrub::VERSION
  spec.authors       = ["dengbo"]
  spec.email         = ["dengbo02@inspur.com"]

  spec.summary       = %q{Fluentd filter plugin.}
  spec.description   = %q{fluent plugin for drop invalid event.}
  spec.homepage      = "https://github.com/xidiandb/fluent-plugin-myscrub"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         =  `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "fluentd", [">= 0.14.0", "< 2"]
end
