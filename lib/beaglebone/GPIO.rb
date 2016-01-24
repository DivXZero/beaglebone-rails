
module Beaglebone
  module GPIO
    def self.list
      str = File.open('/sys/class/gpio')
      str.gsub! "\n", ','

      if !str.split(',').include?('export')
        str.gsub! '\n', ','
      end

      str.split(',')
    end
  end
end
