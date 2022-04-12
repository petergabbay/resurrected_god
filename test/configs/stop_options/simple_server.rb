#! /usr/bin/env ruby

trap :USR1 do
  # do nothing
end

loop do
  $stdout.puts('server')
  $stdout.flush

  sleep 10
end
