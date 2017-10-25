# external libs
require 'rwx'

# internal libs
require 'golumn/version'
require 'golumn/app'

# GUI column, get it?!?
module Golumn
  # start main loop
  def self.main
    App.new.main_loop
  end
end
