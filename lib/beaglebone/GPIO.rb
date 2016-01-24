
module Beaglebone
  module GPIO
    def self.list
      str = File.open('/sys/class/gpio')
      str.gsub! "\n", ','
      str.gsub! '\n', ','
      str.split(',')
    end
  end
end
