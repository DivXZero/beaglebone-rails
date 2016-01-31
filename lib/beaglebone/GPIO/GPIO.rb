
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
    # @return [Boolean] Returns true for success, false otherwise
    #
    def self.enable_pin(pin)
      pin = PINS[pin]
      export = File.open('/sys/class/gpio/export', 'w')
      return false if pin.nil? or export.nil?
      export.puts(pin)
      export.close
      return true
    end

    # Disables a GPIO pin
    #
    # @param pin [Object] Specifies a value from GPIO::PINS
    #
    # @example
    #   Beaglebone::GPIO.disable_pin(:P9_12)
    #
    # @return [Boolean] Returns true for success, false otherwise
    #
    def self.disable_pin(pin)
      pin = PINS[pin]
      unexport = File.open('/sys/class/gpio/unexport', 'w')
      return false if pin.nil? or unexport.nil?
      unexport.puts(pin)
      unexport.close
      return true
    end

    # Set pin direction
    #
    # @param pin [Object] Specifies a value from GPIO::PINS
    # @param direction [Object] Specifies a value from GPIO::DIRECTION
    #
    # @example
    #   Beaglebone::GPIO.set_direction(:P9_12, :OUT)
    #
    # @return [Boolean] Returns true for success, false otherwise
    #
    def self.set_direction(pin, direction)
      dir_file = File.open("/sys/class/gpio/gpio#{PINS[pin]}/direction", 'w')
      return false if dir_file.nil?
      dir_file.puts(DIRECTION[direction])
      dir_file.close
      return true
    end

    # Set pin value
    #
    # @param pin [Object] Specifies a value from GPIO::PINS
    # @param value [Object] Specifies a value from GPIO::VALUE
    #
    # @example
    #   Beaglebone::GPIO.set_value(:P9_12, :HIGH)
    #
    # @return [Boolean] Returns true for success, false otherwise
    #
    def self.set_value(pin, value)
      mode = File.open("/sys/class/gpio/gpio#{PINS[pin]}/value", 'w')
      return false if mode.nil?
      mode.puts(VALUE[value])
      mode.close
      return true
    end

  end
end
