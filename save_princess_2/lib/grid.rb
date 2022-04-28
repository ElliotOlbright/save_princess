class Grid
  attr_reader :grid_size, 
              :grid

  def initialize(grid)

    @grid_size = grid_size
    @grid = grid
  end 

  def find_princess
    princess_coords = []
    @grid.any? do |s|
      if s.include?("p")
        princess_coords << @grid.find_index(s)
        princess_coords << s.index('p')
      end
    end
    princess_coords
  end
end 