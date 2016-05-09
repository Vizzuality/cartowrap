$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cartowrap/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cartowrap"
  s.version     = Cartowrap::VERSION
  s.authors     = ["Vizzuality"]
  s.email       = ["info@vizzuality.com"]
  s.homepage    = "http://vizzuality.com"
  s.summary     = "A simple CartoDB wrapper."
  s.description = "Provides a common interface for some CartoDB functions."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.require_paths  = ["lib"]

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec-core'
  s.add_development_dependency 'rspec-expectations'
  s.add_development_dependency 'rspec-mocks'
  s.add_development_dependency 'codeclimate-test-reporter'

  s.add_runtime_dependency 'faraday'
  s.add_runtime_dependency 'multi_json'
  s.test_files = Dir["spec/**/*"]
end
