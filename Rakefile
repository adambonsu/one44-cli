# frozen_string_literal: true

require 'cucumber'
require 'cucumber/rake/task'
require 'rubygems/package_task'
spec = instance_eval(File.read('one44-cli.gemspec'))

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty -x"
  t.fork = false
end

Gem::PackageTask.new(spec) do |_pkg|
end
