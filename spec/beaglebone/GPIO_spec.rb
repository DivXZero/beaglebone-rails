require 'spec_helper'

describe Beaglebone::GPIO do
  it 'list should contain export, unexport' do
    expect(Beaglebone::GPIO.list).should include('export', 'unexport')
  end
end
