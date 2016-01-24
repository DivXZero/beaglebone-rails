require 'spec_helper'

describe Beaglebone do

  it 'says hello' do
    expect(Beaglebone.hello).to eq('Hello!')
  end

  it 'has a version number' do
    expect(Beaglebone::VERSION).not_to be nil
  end

end
