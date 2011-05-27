# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "eu_countries/version"

Gem::Specification.new do |s|
  s.name        = "eu_countries"
  s.version     = EuCountries::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Caius Durling"]
  s.email       = ["caius@brightbox.co.uk"]
  s.homepage    = ""
  s.summary     = %q{List all countries in the EU}
  s.description = %q{List all countries in the EU}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "countries"

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"

end
