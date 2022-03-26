require 'rubygems'
require 'daemons'

Daemons.run_proc('daemon-polls', { dir_mode: :system }) do
  loop do
    STDOUT.puts('server')
    STDOUT.flush
    sleep 1
  end
end
