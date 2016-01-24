
module Beaglebone
  module GPIO

    # Returns an array of active GPIO pins
    #
    # @param [Bool] optional List all active pins including export and unexport utilites
    #
    # @example Return all active GPIO pins
    #   Beaglebone::GPIO.list #=> ["gpiochip32", "gpiochip64", "gpiochip96", "gpiochip0"]
    #
    def self.list(list_all = false)
      gpio_array = Dir.entries('/sys/class/gpio')
      gpio_array.delete('.')
      gpio_array.delete('..')

      unless list_all == true
        gpio_array.delete('export')
        gpio_array.delete('unexport')
      end

      gpio_array
    end

  end
end
