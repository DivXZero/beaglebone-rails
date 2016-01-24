
module Beaglebone
  module GPIO
    def self.list
      gpio_array = Dir.entries('/sys/class/gpio')
      gpio_array.delete('.')
      gpio_array.delete('..')
      gpio_array
    end
  end
end
