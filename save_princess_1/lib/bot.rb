require_relative 'grid'

class Bot
  attr_reader :bot_x, 
              :bot_y,
              :princess_x,
              :princess_y

  def initialize(grid)
    @bot_x = grid.bot[0]
    @bot_y = grid.bot[1]
    @princess_x = grid.princess[0]
    @princess_y = grid.princess[1]
  end 
end 