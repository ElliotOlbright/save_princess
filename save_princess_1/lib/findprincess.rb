require_relative 'bot'
require_relative 'grid'
require_relative 'princess'

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
    [generate_row_path, generate_column_path]
  end

  def generate_column_path
    column_diff = @princess_x - @bot_x
    column_diff.negative? ? 'LEFT' * column_diff.abs : 'RIGHT' * column_diff
  end
  
  def generate_row_path
    row_diff = @princess_y - @bot_y
    row_diff.negative? ? 'UP' * row_diff.abs : 'DOWN' * row_diff
  end 
end
