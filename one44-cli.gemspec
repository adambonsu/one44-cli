# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'one44-cli/version'

Gem::Specification.new do |s|
  s.name                  = 'one44-cli'
  s.version               = One44::CLI::VERSION
  s.platform              = Gem::Platform::RUBY
  s.summary               = 'CLI User Interface for one44'
  s.description           = 'Marks math problems'
  s.authors               = ['Adam Bonsu']
  s.email                 = 'adam@bonsu.io'
  s.files                 = Dir['lib/**/*'] + Dir['bin/one44-cli']
  s.executables           = %w[one44-cli]
  s.add_dependency 'one44', '0.0.2'
  s.homepage              = 'https://github.com/adambonsu/one44-cli'
  s.license               = 'MIT'
  s.required_ruby_version = '>= 2.7.2'
  s.extra_rdoc_files      = Dir['README.md', 'CHANGELOG.md']
  s.metadata              = {
    'changelog_uri' => 'https://github.com/adambonsu/one44-cli/blob/main/CHANGELOG.md'
  }
end
