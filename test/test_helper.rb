require "minitest/autorun"
require "minitest/spec"
require "minitest/reporters"
require "eip55/util"
require "eip55/address"
require "securerandom"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
