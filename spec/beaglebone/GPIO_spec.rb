require 'spec_helper'

describe Beaglebone::GPIO do

  :test_pin = :P9_12

  it 'lists utilities and active pins' do
    expect(Beaglebone::GPIO.list(true)).to include('export', 'unexport')  # List all
    expect(Beaglebone::GPIO.list).to_not include('export', 'unexport')    # Exclude utilities
  end

  it 'contains 65 possible digital I/Os' do
    expect(Beaglebone::GPIO::PINS.length).to eq(65)
  end

  it 'has the ability to enable pins' do
    expect(Beaglebone::GPIO.enable_pin(:test_pin)).to_not eq(false)
  end

  it 'has the ability to set pin direction' do
    expect(Beaglebone::GPIO.set_direction(:test_pin, :OUT)).to_not eq(false)
  end

  it 'has the ability to disable pins' do
    expect(Beaglebone::GPIO.disable_pin(:test_pin)).to_not eq(false)
  end

end
