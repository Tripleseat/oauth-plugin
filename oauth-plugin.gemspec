$:.push File.expand_path('lib', __dir__)
require 'oauth-plugin/version'

Gem::Specification.new do |s|
  s.name = 'oauth-plugin'
  s.version = Oauth::Plugin::VERSION

  s.required_rubygems_version = Gem::Requirement.new('> 1.3.1') if s.respond_to? :required_rubygems_version=
  s.authors = ['Pelle Braendgaard']
  s.date = '2011-10-20'
  s.description = 'Rails plugin for implementing an OAuth Provider or Consumer'
  s.license = 'MIT'
  s.email = 'oauth-ruby@googlegroups.com'
  s.extra_rdoc_files = [
    'README.rdoc'
  ]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }

  s.homepage = 'http://github.com/pelle/oauth-plugin'
  s.require_paths = ['lib']
  s.rubyforge_project = 'oauth'
  s.rubygems_version = '1.3.7'
  s.summary = 'Ruby on Rails Plugin for OAuth Provider and Consumer'
  s.add_development_dependency 'fakeweb'
  s.add_development_dependency 'fuubar'
  s.add_development_dependency 'growl'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'opentransact'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'rspec', '~> 2.4.0'

  s.add_dependency 'multi_json'
  s.add_dependency('oauth', ['~> 0.6.2'])
  s.add_dependency('oauth2', '>= 0.5.0')
  s.add_dependency('rack')
end
