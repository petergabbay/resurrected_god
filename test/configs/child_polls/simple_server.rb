#! /usr/bin/env ruby

data = +''

loop do
  $stdout.puts('server')
  $stdout.flush

  100000.times { data << 'x' }

  sleep 10
end
