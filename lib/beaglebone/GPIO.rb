
module Beaglebone
  module GPIO
    def self.list
      `ls /sys/class/gpio/`
    end
  end
end
