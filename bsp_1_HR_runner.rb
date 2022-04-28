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

class Bot
  attr_reader :bot_x, 
              :bot_y

  def initialize(grid)
    @bot_x = grid.bot[0]
    @bot_y = grid.bot[1]
  end 
end 

class Princess 
  attr_reader :princess_x,
              :princess_y

  def initialize(grid)
    @princess_x = grid.princess[0]
    @princess_y = grid.princess[1]
  end 
end 

class Findprincess
  attr_accessor :grid,
                :bot_x,
                :bot_y,
                :princess_x,
                :princess_y
  attr_reader   :grid, :bot

  def initialize(grid)
    @bot_x = grid.bot[0]
    @bot_y = grid.bot[1]
    @princess_x = grid.princess[0]
    @princess_y = grid.princess[1]
  end

  def path_to_princess
    moves_to_princess = []
    moves_to_princess << vertical_movement until @bot_y == @princess_y
    moves_to_princess << horizontal_movement until @bot_x == @princess_x
    moves_to_princess
  end

  def horizontal_movement
    if @bot_x > @princess_x
      @bot_x -= 1
      'LEFT'
    elsif @bot_x < @princess_x
      @bot_x += 1
      'RIGHT'
    end
  end

  def vertical_movement
    if @bot_y > @princess_y
      @bot_y -= 1
      'UP'
    elsif @bot_y < @princess_y
      @bot_y += 1
      'DOWN'
    end
  end
end

def displayPathtoPrincess(n,grid)
  matrix = Grid.new(n, grid)
  save_princess = SavePrincess.new(matrix)

  save_princess.path_to_princess.each do |movement|
    puts movement
  end
end

n = gets.to_i

grid = []

(0...n).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(n, grid)

