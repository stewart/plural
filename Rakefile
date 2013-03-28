#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rspec/core/rake_task'

task default: :spec

RSpec::Core::RakeTask.new :spec

desc 'Open an irb session reploaded with the plural library'
task :console do
  sh 'irb -Ilib -rplural'
end
