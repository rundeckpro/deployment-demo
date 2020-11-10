require './app.rb'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new :specs do |task|
  task.pattern = Dir['*_spec.rb']
end

task :test => ['specs']
