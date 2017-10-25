module Golumn
  # main app
  class App < WX::App
    def on_init
      @frame = WX::Frame.new(nil, title: 'widgets demo')
      @frame.layout
      @frame.show
    end

    foo = <<-SQL
      grid = new wxGrid( this,
                        -1,
                        wxPoint( 0, 0 ),
                        wxSize( 400, 300 ) );
      // Then we call CreateGrid to set the dimensions of the grid
      // (100 rows and 10 columns in this example)
      grid->CreateGrid( 100, 10 );
      // We can set the sizes of individual rows and columns
      // in pixels
      grid->SetRowSize( 0, 60 );
      grid->SetColSize( 0, 120 );
      // And set grid cell contents as strings
      grid->SetCellValue( 0, 0, "wxGrid is good" );
      // We can specify that some cells are read->only
      grid->SetCellValue( 0, 3, "This is read->only" );
      grid->SetReadOnly( 0, 3 );
      // Colours can be specified for grid cell contents
      grid->SetCellValue(3, 3, "green on grey");
      grid->SetCellTextColour(3, 3, *wxGREEN);
      grid->SetCellBackgroundColour(3, 3, *wxLIGHT_GREY);
      // We can specify the some cells will store numeric
      // values rather than strings. Here we set grid column 5
      // to hold floating point values displayed with width of 6
      // and precision of 2
      grid->SetColFormatFloat(5, 6, 2);
      grid->SetCellValue(0, 6, "3.1415");
    SQL

    def build_grid
      @grid = WX::Grid.new(nil, WX::Point.new(0, 0), WX::Size.new(400, 300))
    end
  end
end
