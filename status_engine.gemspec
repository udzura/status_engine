$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "status_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "status_engine"
  s.version     = StatusEngine::VERSION
  s.authors     = ["Uchio KONDO"]
  s.email       = ["udzura@udzura.jp"]
  s.homepage    = "https://github.com/paperboy-all/"
  s.summary     = "StatusEngine describes your Rails app status"
  s.description = "StatusEngine describes your Rails app status"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "fakefs"
end
