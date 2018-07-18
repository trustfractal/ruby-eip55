Gem::Specification.new do |spec|
  spec.name = "eip55"
  spec.version = "1.0"
  spec.authors = ["Mário Carneiro"]
  spec.email = ["mario.carneiro@frctls.com"]

  spec.summary = "Implementation of the EIP55 checksum address encoding"

  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "rubocop"

  spec.files = [
    "Gemfile",
    "Rakefile",
    "lib/eip55/address.rb",
  ]
  spec.require_paths = ["lib/eip55"]
end
