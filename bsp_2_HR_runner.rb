class Grid
  attr_reader :grid_size, 
              :grid,
              :princess_x,
              :princess_y

  def initialize(grid)
    @grid_size = grid.count
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

class Findprincess
  attr_reader :grid,
                :bot_x,
                :bot_y,
                :princess_x,
                :princess_y,
                :step

  def initialize(n, row, column, grid)
    @grid = Grid.new(grid)
    @bot_x = column
    @bot_y = row
    @princess_x = @grid.princess_x
    @princess_y = @grid.princess_y
    @step = []
  end

  def next_step
    if (@bot_y == @princess_y)
      horizontal_movement
    else 
      vertical_movement
    end
    puts @step
  end

  def horizontal_movement
    if @bot_x > @princess_x
      @bot_x -= 1
      @step << 'LEFT'
    elsif @bot_x < @princess_x
      @bot_x += 1
      @step << 'RIGHT'
    end
  end

  def vertical_movement
    if @bot_x == @princess_x
      if @bot_y > @princess_y
        @bot_y -= 1
        @step << 'UP'
      elsif @bot_y < @princess_y
        @bot_y += 1
        @step << 'DOWN'
      end
    else
      if @bot_y > @princess_y
        @bot_y -= 1
        @step << 'UP'
      elsif @bot_y < @princess_y
        @bot_y += 1
        @step << 'DOWN'
      end
    end
  end
end

def nextMove(n,r,c,grid)
  save_princess = Findprincess.new(n, r, c, grid)
  save_princess.next_step
end

n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
  grid[i] = gets
end

nextMove(n,r,c,grid)