require_relative 'grid'

class Bot
  attr_reader :bot_x, 
              :bot_y

  def initialize(grid)
    @bot_x = grid.bot[0]
    @bot_y = grid.bot[1]
  end 
end 