require 'singleton'

class ConfigTest
  include Singleton

end

config = ConfigTest.instance

config == ConfigTest.instance && puts("instance same")