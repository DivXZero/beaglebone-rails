
module Beaglebone
  module GPIO
    def self.list
      gpio_array = Dir.entries('/sys/class/gpio')
      #gpio_array.remove('.')
      #gpio_array.remove('..')

      #str = File.open('/sys/class/gpio').read
      #str.gsub! "\n", ','

      #str.gsub! '\n', ',' unless str.split(',').include?('export')

      #str.split(',')
    end
  end
end
