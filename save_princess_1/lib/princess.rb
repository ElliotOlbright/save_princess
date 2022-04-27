class Princess 
  attr_reader :princess_x,
              :princess_y,
              :bot_x,
              :bot_y

  def initialize(grid)
    @princess_x = grid.princess[0]
    @princess_y = grid.princess[1]
    @bot_x = grid.bot[0]
    @bot_y = grid.bot[1]
  end 
end 