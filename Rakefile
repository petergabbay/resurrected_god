# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake'

#############################################################################
#
# Standard tasks
#
#############################################################################

task default: :test

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  file_list = FileList['test/**/test_*.rb']
  file_list = file_list.exclude('test/test_god_system.rb')
  test.test_files = file_list
  test.libs << 'lib' << 'test'
  test.verbose = true
end

Rake::TestTask.new(:system_test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_god_system.rb'
  test.verbose = true
end

desc 'Open an irb session preloaded with this library'
task :console do
  sh 'irb -r ./lib/god.rb'
end

#############################################################################
#
# Custom tasks (add your own tasks here)
#
#############################################################################

desc 'Generate and view the site locally'
task :site do
  # Generate the dynamic parts of the site.
  puts 'Generating dynamic...'

  require 'asciidoctor'
  doc = Asciidoctor.load_file('./doc/god.adoc', safe: :safe, standalone: false)
  template = File.read('./site/index.template.html')
  index = template.sub('{{ content }}', doc.content)
  File.write('./docs/index.html', index)

  puts 'Done.'
end
