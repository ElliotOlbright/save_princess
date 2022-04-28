cclass Grid
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
end

def next_step
  puts generate_row_move || generate_column_move
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