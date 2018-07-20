require "minitest/autorun"
require "minitest/spec"
require "minitest/reporters"
require "securerandom"
require "eip55"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
