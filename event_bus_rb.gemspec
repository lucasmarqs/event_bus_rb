# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'event_bus/version'

Gem::Specification.new do |spec|
  spec.name          = 'event_bus_rb'
  spec.version       = EventBus::VERSION
  spec.authors       = ['Emprego Ligado']
  spec.email         = ['vagas@empregoligado.com.br']

  spec.summary       = %q{Expose an api to produce and consume events.}
  spec.description   = %q{Tool to produce and consume events to a distributed and async architecture}
  spec.homepage      = 'http://gems.empregoligado.com.br'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 0'
  spec.add_development_dependency 'rake', '~> 0'
  spec.add_development_dependency 'rspec', '~> 0'
  spec.add_development_dependency 'pry-meta', '~> 0'
  spec.add_development_dependency 'dotenv', '~> 0'

  spec.add_dependency 'bunny', '~> 2.7'
end