require "bundler/setup"
require "a_panzer/version"
require "a_panzer"

RSpec.configure do |config|
  config.expect_with(:rspec) { |c| c.syntax = :should }
  config.mock_with(:rspec) { |c| c.syntax = :should }
end
