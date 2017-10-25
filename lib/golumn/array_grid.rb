require 'csv'

module Golumn
  # main app
  class ArrayGrid < WX::GridTable
    def initialize(data:)
      @data = data
    end

    def rows
      @data.size
    end

    def cols
      @data.first.size
    end

    def [](i, j)
      @data[i][j]
    end

    def []=(i, j, value)
      @data[i][j] = value
    end

    def typename(*_)
      :string
    end
  end
end
