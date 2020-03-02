lib = File.expand_path("lib", __dir__)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-myscrub"
  spec.version       = "0.0.1"
  spec.authors       = ["dengbo"]
  spec.email         = ["dengbo02@inspur.com"]

  spec.summary       = %q{Fluentd filter plugin.}
  spec.description   = %q{fluent plugin for drop invalid event.}
  spec.homepage      = "https://github.com/xidiandb/fluent-plugin-myscrub"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         =  `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "fluentd", [">= 0.14.0", "< 2"]
end
