require_relative 'grid'

class Findprincess
  attr_accessor :grid,
                :bot_x,
                :bot_y,
                :princess_x,
                :princess_y
  attr_reader   :grid, :bot

  def initialize(n, row, column, grid)
    @grid = Grid.new(grid)
    @bot_y = column
    @bot_x = row
    @princess_x = @grid.princess_x
    @princess_y = @grid.princess_y
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