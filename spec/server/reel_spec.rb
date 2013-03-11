require 'spec_helper'
require 'saorin/test'

describe Saorin::Server::Reel do
  include Saorin::Test

  include_context 'setup rpc server client' do
    let(:server_adapter) { :reel }
  end

  it_should_behave_like 'rpc server client'
end
