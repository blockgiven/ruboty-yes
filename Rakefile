require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern    = ['spec/**{,/*/**}/*_spec.rb', 'spec/**{,/*/**}/*.feature']
  t.rspec_opts = '-r turnip/rspec'
end
task default: :spec
