
module Beaglebone
  module GPIO
    def self.list(list_all = false)
      gpio_array = Dir.entries('/sys/class/gpio')
      gpio_array.delete('.')
      gpio_array.delete('..')

      if !list_all?
        gpio_array.delete('export')
        gpio_array.delete('unexport')
      end

      gpio_array
    end
  end
end
