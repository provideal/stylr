# coding: utf-8

$:.push File.expand_path("../lib", __FILE__)

require "stylr/version"

Gem::Specification.new do |s|
  s.name        = "stylr"
  s.version     = Stylr::VERSION
  s.authors     = ["Rene Sprotte"]
  s.email       = ["rene.sprotte@provideal.net"]
  s.homepage    = "https://github.com/provideal/stylr"
  s.summary     = "A collection of reusable CSS stuff based on SASS and Compass packaged as a Rails 3.1 engine."
  s.description = "Stylr is a collection of reusable CSS stuff based on SASS and Compass packaged as a Rails 3.1 engine to help you kick-start your projects."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '> 3.1'
  s.add_dependency 'sass-rails', '> 3.1'
  s.add_dependency 'compass-rails', '>= 1.0.0.rc.3'
  s.add_dependency 'jquery-rails'
end
