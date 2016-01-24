require 'spec_helper'

describe Beaglebone do
  it 'has a version number' do
    expect(Beaglebone::VERSION).not_to be nil
  end

  it 'should say hello' do
    expect(Beaglebone.hello).to eq('Hello!')
  end
end
