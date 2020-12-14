
require_relative 'referee'
class Tic_Tac_Toe
  puts "What is Player One's name?"
  player_one = gets.chomp
  puts "What is Player Two's name?"
  player_two = gets.chomp
  puts "Player One is #{player_one} and Player two is #{player_two}"

  start = Referee.new(player_one, player_two)
  start.play
end
