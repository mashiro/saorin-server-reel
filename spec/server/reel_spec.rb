require 'spec_helper'
require 'saorin/test'

describe Saorin::Server::Reel do
  include Saorin::Test
  include_context 'setup rpc server client', :server => {:adapter => :reel}
  it_should_behave_like 'rpc communicatable'
end
