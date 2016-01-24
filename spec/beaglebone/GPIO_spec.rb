require 'spec_helper'

describe Beaglebone::GPIO do
  it 'list should contain export, unexport' do
    expect(Beaglebone::GPIO.list).to include('export', 'unexport')
  end
end
