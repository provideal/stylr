$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kicker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kicker"
  s.version     = Kicker::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Kicker."
  s.description = "TODO: Description of Kicker."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency "rails", "~> 3.1"
end
