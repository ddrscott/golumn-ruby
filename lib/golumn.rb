# external libs
require 'rwx'

# internal libs
require 'golumn/version'
require 'golumn/array_grid'
require 'golumn/app'

# GUI column, get it?!?
module Golumn
  # start main loop
  def self.main(io: nil)
    App.new(io: io).main_loop
  end
end
