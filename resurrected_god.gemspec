require_relative 'lib/god/version'

Gem::Specification.new do |s|
  s.name = 'resurrected_god'
  s.version = God::VERSION

  s.summary = "Process monitoring framework."
  s.description = "An easy to configure, easy to extend monitoring framework written in Ruby."

  s.authors = ["Tom Preston-Werner", "Kevin Clark", "Eric Lindvall", "mishina2228"]
  s.email = %w[god-rb@googlegroups.com temma182008+github@gmail.com]
  s.homepage = 'https://github.com/mishina2228/resurrected_god'

  s.require_paths = %w[lib ext]

  s.executables = ["god"]
  s.extensions = %w[ext/god/extconf.rb]

  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md]

  s.add_development_dependency('json', '~> 1.6')
  s.add_development_dependency('rake')
  s.add_development_dependency('minitest')
  s.add_development_dependency('rdoc', '~> 3.10')
  s.add_development_dependency('twitter', '~> 5.0')
  s.add_development_dependency('prowly', '~> 0.3')
  s.add_development_dependency('xmpp4r', '~> 0.5')
  s.add_development_dependency('dike', '~> 0.0.3')
 # s.add_development_dependency('rcov', '~> 0.9')
  s.add_development_dependency('daemons', '~> 1.1')
  s.add_development_dependency('mocha', '~> 0.10')
  s.add_development_dependency('gollum', '~> 1.3.1')
  #the last version to support 1.8.7 is 0.99.6
  s.add_development_dependency('mustache', ['~> 0.99.0', '< 0.99.7'])
  s.add_development_dependency('airbrake', '~> 3.1.7')
  s.add_development_dependency('nokogiri', '~> 1.5.0')
  s.add_development_dependency('activesupport', [ '>= 2.3.10', '< 4.0.0' ])
  s.add_development_dependency('statsd-ruby')
  s.add_development_dependency('i18n', '< 0.7.0')

  s.files = Dir['History.md', 'LICENSE', 'README.md', 'bin/**/*', 'ext/**/*', 'lib/**/*']
end
