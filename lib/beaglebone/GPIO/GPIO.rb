
module Beaglebone
  # General Purpose I/O
  #
  module GPIO

    # Returns an array of active GPIO pins
    #
    # @param list_all [Bool] optional List all active pins including export and unexport utilites
    #
    # @example Return all active GPIO pins
    #   Beaglebone::GPIO.list #=> ["gpiochip32", "gpiochip64", "gpiochip96", "gpiochip0"]
    #
    # @return [Array] String array of active gpio pins
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

    # Enables a pin for GPIO
    #
    # @param pin [Object] Specifies a value from GPIO::PINS to enable
    #
    # @example
    #   Beaglebone::GPIO.enable_pin(:P9_12)
    #
    def self.enable_pin(pin)
      pin = PINS[pin]
      export = File.open('/sys/class/gpio/export', 'w')
      return false if pin.nil? or export.nil?
      export.puts(pin)
      return true
    end

  end
end
