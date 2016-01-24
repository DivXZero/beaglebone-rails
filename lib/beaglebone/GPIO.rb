
module Beaglebone
  module GPIO
    def self.list
      str = File.open('/sys/class/gpio')
      str.gsub! "\n", ','

      str.gsub! '\n', ',' unless str.split(',').include?('export')

      str.split(',')
    end
  end
end
