# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'one44-cli/version'

Gem::Specification.new do |s|
  s.name                  = 'one44-cli'
  s.version               = One44::VERSION
  s.summary               = 'CLI User Interface for one44'
  s.description           = 'Marks math problems'
  s.authors               = ['Adam Bonsu']
  s.email                 = 'adam@bonsu.io'
  s.files                 = Dir['lib/**/*'] + Dir['Gemfile*']
  s.homepage              = 'https://github.com/adambonsu/one44-cli'
  s.license               = 'MIT'
  s.required_ruby_version = '>= 2.7.0'
end
