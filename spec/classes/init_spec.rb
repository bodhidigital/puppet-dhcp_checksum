require 'spec_helper'
describe 'dhcp_checksum' do
  context 'with default values for all parameters' do
    it { should contain_class('dhcp_checksum') }
  end
end
