require 'csv'

module Golumn
  # Main app window
  class App < WX::App
    def initialize(io: ARGF)
      @io = io
    end

    def on_init
      @frame = WX::Frame.new(nil, title: 'Golumn')
      @frame.sizer = WX::BoxSizer.new(:vertical) do |box|
        @grid = WX::Grid.new(@frame)
        @grid.table = ArrayGrid.new(data: CSV.parse(@io.read))
        box.add(@grid, expand: true)
      end
      @frame.layout
      @frame.show
    end
  end
end
