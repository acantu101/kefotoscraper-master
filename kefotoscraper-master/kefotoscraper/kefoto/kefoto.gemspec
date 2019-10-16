lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kefoto/version"

Gem::Specification.new do |spec|
  spec.name          = "kefoto"
  spec.version       = Kefoto::VERSION
  spec.authors       = ["Alejandra Cantu"]
  spec.email         = ["alejandra.cantu13@gmail.com"]

  spec.summary       = "scraper for kefoto website"
  spec.description   = "This is my final project bitch"
  spec.homepage      = "https://github.com"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com"
  spec.metadata["changelog_uri"] = "https://github.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "nokogiri"
  spec.add_dependency "httparty"
  spec.add_development_dependency "pry"


end

