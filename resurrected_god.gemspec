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

  s.files = Dir['History.md', 'LICENSE', 'README.md', 'bin/**/*', 'ext/**/*', 'lib/**/*']
end
