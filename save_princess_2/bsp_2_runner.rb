require_relative 'lib/findprincess/'

puts "Please provide a number for the grid size. MUST be an odd number between 3 and 100"
grid = []
n = gets.chomp.to_i
row_number= 0

puts "Please provide an x-coordinate for the bot!"
row = gets.chomp.to_i
puts "Please provide an y-coordinate for the bot!"
column = gets.chomp.to_i

until row_number == n
  puts "please provide a row for you grid (#{row_number}), keep in mind 'm' has to be placed in the center of the grid. Ex. '--p', '-m-', '---'"
  grid << gets.chomp
  row_number += 1
end 

save_princess = Findprincess.new(n, row, column, grid)

save_princess.next_step
