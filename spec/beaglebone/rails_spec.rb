require 'spec_helper'

describe Beaglebone::Rails do
  it 'has a version number' do
    expect(Beaglebone::Rails::VERSION).not_to be nil
  end

  it 'should say hello' do
    expect(Beaglebone::Rails::BB.hello).to eq('Hello!')
  end
end
