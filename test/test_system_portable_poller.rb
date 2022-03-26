require File.dirname(__FILE__) + '/helper'

class TestSystemPortablePoller < Minitest::Test
  def setup
    pid = Process.pid
    @process = System::PortablePoller.new(pid)
  end
end
