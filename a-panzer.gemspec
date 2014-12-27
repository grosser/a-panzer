name = "a-panzer"
require "./lib/a_panzer/version"

Gem::Specification.new name, APanzer::VERSION do |s|
  s.summary = "A. Panzer game"
  s.authors = ["Michael Grosser"]
  s.email = "michael@grosser.it"
  s.homepage = "https://github.com/grosser/#{name}"
  s.files = `git ls-files lib/ bin/ MIT-LICENSE`.split("\n")
  s.license = "MIT"
  s.executables = ["a-panzer"]
  s.required_ruby_version = '>= 2.0.0' # curses does not build on 1.9
  s.add_runtime_dependency "dispel", ">= 0.0.7"
end
