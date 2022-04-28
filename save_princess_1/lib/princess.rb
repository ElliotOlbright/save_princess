require_relative 'grid'

class Princess 
  attr_reader :princess_x,
              :princess_y

  def initialize(grid)
    @princess_x = grid.princess[0]
    @princess_y = grid.princess[1]
  end 
end 