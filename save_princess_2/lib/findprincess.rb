require_relative 'grid'

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