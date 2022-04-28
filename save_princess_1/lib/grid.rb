class Grid 
  attr_reader :grid,
              :grid_size,
              :bot,
              :princess

  def initialize(grid_size, grid)
    raise ArgumentError, "Please enter a valid integer" unless grid_size < 100 && grid_size > 2
    raise ArgumentError, "Please make sure your grid size and grid match" unless grid_size == grid.count

    @grid = grid
    @grid_size = grid_size
    @bot = locate_bot
    @princess = locate_princess
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

  def locate_bot
    bot_coords = []
    @grid.any? do |s|
      if s.include?("m")
        bot_coords << s.index('m')
        bot_coords << @grid.find_index(s)
      end
    end
    bot_coords
  end
end 