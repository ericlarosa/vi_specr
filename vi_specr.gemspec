lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "vi_specr/version"

Gem::Specification.new do |spec|
  spec.name          = "vi_specr"
  spec.version       = ViSpecr::VERSION
  spec.authors       = ["Eric La Rosa"]
  spec.email         = ["eric@rosa.la"]

  spec.summary       = "Spec runner with vim commands and git integration"
  spec.description   = "Spec runner with vim commands and git integration"
  spec.homepage      = "https://github.com/ericlarosa/vi_specr"
  spec.license       = "MIT"

  spec.metadata = {
    "homepage_uri" => "https://github.com/ericlarosa/vi_specr",
    "source_code_uri" => "https://github.com/ericlarosa/vi_specr",
    "changelog_uri" => "https://github.com/ericlarosa/vi_specr"
  }

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'rubocop'
end
