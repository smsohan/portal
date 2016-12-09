$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "common_layout/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "common_layout"
  s.version     = CommonLayout::VERSION
  s.authors     = ["smsohan"]
  s.email       = ["sohan39@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of CommonLayout."
  s.description = "TODO: Description of CommonLayout."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.2"

  s.add_development_dependency "sqlite3"
end
