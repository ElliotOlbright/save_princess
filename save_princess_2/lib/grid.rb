class Grid
  attr_reader :grid_size, 
              :grid,
              :princess_x,
              :princess_y

  def initialize(grid)
    @grid_size = grid_size
    @grid = grid
    @princess_x = locate_princess[0]
    @princess_y = locate_princess[1]
  end 

  def locate_princess
    princess_coords = []
    @grid.any? do |s|
      if s.include?("p")
        princess_coords << s.index('p')
        princess_coords << @grid.find_index(s)
      end
    end
    princess_coords
  end
end 