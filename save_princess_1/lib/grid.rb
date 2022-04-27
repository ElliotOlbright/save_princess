class Grid 
  attr_reader :grid,
              :grid_size,
              :bot_row,
              :bot_column,
              :princess

  def initialize(grid_size, grid)

    @grid = grid
    @grid_size = grid_size
    @bot_row = (grid_size - 1) / 2
    @bot_column = (grid_size - 1) / 2
    @princess = locate_princess
  end 

  def locate_princess
    c = []
    @grid.any? do |s|
      if s.include?("p")
        c << @grid.find_index(s)
        c << s.index('p')
      end
    end
    c
  end
end 