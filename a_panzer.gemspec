name = "a_panzer"
require "./lib/#{name.gsub("-","/")}/version"

Gem::Specification.new name, APanzer::VERSION do |s|
  s.summary = "A panzer game"
  s.authors = ["Michael Grosser"]
  s.email = "michael@grosser.it"
  s.homepage = "https://github.com/grosser/#{name}"
  s.files = `git ls-files lib/ bin/ MIT-LICENSE`.split("\n")
  s.license = "MIT"
end
