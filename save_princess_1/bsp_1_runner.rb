require_relative 'lib/findprincess/'

puts "Please provide a number for the grid size. MUST be an odd number between 3 and 100"
grid = []
grid_size = gets.chomp.to_i
row = 0

until row == grid_size
  puts "please provide a row for you grid #{row}, keep in mind 'm' has to be placed in the center of the grid. Ex. '--p', '-m-', '---'"
  grid << gets.chomp
  row += 1
end 

matrix = Grid.new(grid_size, grid)

save_princess = Findprincess.new(matrix)

save_princess.path_to_princess.each do |movement|
  puts movement
end

