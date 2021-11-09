# frozen_string_literal: true

require_relative "lib/Ipgeobase/version"

Gem::Specification.new do |spec|
  spec.name          = "Ipgeobase"
  spec.version       = Ipgeobase::VERSION
  spec.authors       = ["Melnyk Misha"]
  spec.email         = ["melnyk.mish@gmail.com"]

  spec.summary       = "Print metadata by IP"
  spec.description   = "Print metadata by IP.
  ```ruby
  ip_meta = Ipgeobase.lookup('8.8.8.8')
  ip_meta.city # Ashburn
  ip_meta.country # United States
  ip_meta.countryCode # US
  ip.lat # 39.03
  ip.lon # -77.5
  ```
  "
  spec.homepage      = "https://github.com/melnyk-mikhailo/Ipgeobase"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/melnyk-mikhailo/Ipgeobase"
  spec.metadata["changelog_uri"] = "https://github.com/melnyk-mikhailo/Ipgeobase"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
