
module Beaglebone
  module GPIO
    def self.list
      `ls /sys/class/gpio/`.split('\n')
    end
  end
end
