require 'spec_helper'

describe Beaglebone do
  it 'has a version number' do
    expect(Beaglebone::VERSION).not_to be nil
  end
end
