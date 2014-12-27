require "spec_helper"

describe APanzer do
  it "has a VERSION" do
    APanzer::VERSION.should =~ /^[\.\da-z]+$/
  end
end
