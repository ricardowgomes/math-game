require "./Game"

puts "PLAYER ONE, ENTER YOUR NAME..."
name_one = gets.chomp.capitalize

puts "PLAYER TWO! ENTER YOUR NAME..."
name_two = gets.chomp.capitalize

game1 = MathGame.new(name_one, name_two)
game1.play