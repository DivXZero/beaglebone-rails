
module Beaglebone
  module GPIO
    def self.list
      str = `ls /sys/class/gpio/`
      str.gsub! "\n", ','
      str.split(',')
    end
  end
end
