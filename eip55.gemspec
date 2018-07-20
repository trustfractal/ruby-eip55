$:.push File.expand_path("lib", __dir__)

require "eip55/version"

Gem::Specification.new do |spec|
  spec.name = "eip55"
  spec.version = EIP55::VERSION

  spec.authors = ["Steve Ellis", "Mário Carneiro"]
  spec.email = ["email@steveell.is", "mario.carneiro@frctls.com"]

  spec.summary = "Implementation of the EIP55 checksum address encoding"
  spec.license = "MIT"
  spec.homepage = "https://github.com/FractalBlockchain/ruby-eip55"

  spec.required_ruby_version = ">= 2.5.0"

  spec.add_dependency "digest-sha3", "~> 1.1"
  spec.add_development_dependency "minitest", "~> 5.11"
  spec.add_development_dependency "minitest-reporters", "~> 1.3"
  spec.add_development_dependency "rubocop", "~> 0.58"

  spec.files = Dir["lib/**/*", "LICENSE.txt", "README.md", "Rakefile", "Gemfile"]
  spec.test_files = Dir["test/**/*"]
end
