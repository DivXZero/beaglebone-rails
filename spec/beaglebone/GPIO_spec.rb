require 'spec_helper'

describe Beaglebone::GPIO do
  it 'list contains export, unexport' do
    expect(Beaglebone::GPIO.list(true)).to include('export', 'unexport')
  end
end
