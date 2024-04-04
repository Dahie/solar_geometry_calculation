# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solar_geometry_calculation/version'

Gem::Specification.new do |s|
  s.name        = 'solar_geometry_calculation'
  s.version     = SolarGeometryCalculation::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Tadatoshi Takahashi']
  s.license = 'MIT'
  s.email       = ['tadatoshi@gmail.com']
  s.homepage    = 'https://github.com/tadatoshi/solar_geometry_calculation'
  s.summary     = 'Performs calculation for solar geometry'
  s.description = 'Mathematical part of obtaining solar geometry information'

  s.rubyforge_project = 'solar_geometry_calculation'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'activesupport', '>= 4.1.1'
  s.add_dependency 'tzinfo'

  s.add_development_dependency 'rspec'
  s.metadata['rubygems_mfa_required'] = 'true'
end
