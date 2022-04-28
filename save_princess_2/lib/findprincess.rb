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
  end

  def next_step
    puts [generate_row_move || generate_column_move]
  end

  def generate_column_move
    column_diff = @princess_x - @bot_x
    (column_diff.negative? ? 'LEFT' : 'RIGHT') if !column_diff.zero?
  end
  
  def generate_row_move
    row_diff = @princess_y - @bot_y
    (row_diff.negative? ? 'UP' : 'DOWN') if !row_diff.zero?
  end 
end

