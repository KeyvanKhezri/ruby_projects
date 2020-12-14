require_relative 'player'

class Board
  def initialize
    @playing_board = Array.new(9, nil)
  end

  def display_playing_board
    puts " #{@playing_board[0] || '0'} | #{@playing_board[1] || '1'} | #{@playing_board[2] || '2'}"
    puts "-----------"
    puts " #{@playing_board[3] || '3'} | #{@playing_board[4] || '4'} | #{@playing_board[5] || '5'}"
    puts "-----------"
    puts " #{@playing_board[6] || '6'} | #{@playing_board[7] || '7'} | #{@playing_board[8] || '8'}"
  end


  def update_playing_board(position, player)
    if @playing_board[position] == nil
      @playing_board[position] = player.marker
      true
    else
      puts "Illegal move"
      false
    end
  end

  attr_accessor :playing_board
end











































# class Board
#   def initialize()
#     @@board = Array.new(3){Array.new(3)}
#   end

#   def fill_board
#     i = 1
#     @@board.each do |row|
#       row.each_with_index do |column, index|
#         row[index] = i
#         i += 1
#       end
#     end
#   end

#   def display_board
#     @@board.map do |row|
#       puts row.join('|')
#       puts '-----'
#     end
#   end

#   attr_accessor :board
# end

# newgame = Board.new
# newgame.fill_board
# newgame.display_board

