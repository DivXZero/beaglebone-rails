require 'spec_helper'

describe Beaglebone do
  it 'should say hello' do
    expect(Beaglebone.hello).to eq('Hello!')
  end
end
