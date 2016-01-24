require 'spec_helper'

describe Beaglebone::GPIO do
  it 'list should contain export, unexport' do
    expect(Beaglebone::GPIO.list(true)).to include('export', 'unexport')
  end
end
