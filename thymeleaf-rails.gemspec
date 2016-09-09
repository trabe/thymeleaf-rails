lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "thymeleaf/rails/version"

Gem::Specification.new do |s|
  s.name        = "thymeleaf-rails"
  s.version     = Thymeleaf::Rails::VERSION
  s.authors     = ["David Barral", "Daniel Vázquez Brañas"]
  s.email       = ["david@trabesoluciones.es", "daniel.vbranas@udc.es"]
  s.homepage    = "https://github.com/trabe/thymeleaf-rails"
  s.summary     = "Thymeleaf.rb adaptor for Ruby on Rails"
  s.description = "Thymeleaf.rb adaptor for Ruby on Rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
  s.add_dependency 'tilt'
  s.add_dependency 'thymeleaf'
  s.add_dependency "activesupport", [">= 4.0.1"]
  s.add_dependency "actionpack",    [">= 4.0.1"]
  s.add_dependency "railties",      [">= 4.0.1"]

  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
end
