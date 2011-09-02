$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kicker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kicker"
  s.version     = Kicker::VERSION
  s.authors     = ["René Sprotte"]
  s.email       = ["rene.sprotte@provideal.net"]
  s.homepage    = "https://github.com/provideal/kicker"
  s.summary     = "A collection of reusable CSS stuff based on SASS and Compass packaged as a Rails 3.1 engine."
  s.description = "Kicker is a collection of reusable CSS stuff based on SASS and Compass packaged as a Rails 3.1 engine to help you kick-start your projects."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 3.1'
  s.add_dependency 'sass-rails', '~> 3.1'
  s.add_dependency 'compass', '~> 0.12.alpha.0'
end
