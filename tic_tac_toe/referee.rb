require_relative 'board'

class Referee
  def initialize(player_one, player_two)
    @board = Board.new
    @board_array = @board.playing_board
    @board.display_playing_board
    @player_one = Player.new(player_one, 'X')
    @player_two = Player.new(player_two, 'O')
    @last_player = @player_two
    @winning_combos = %w[012 345 678 036 147 258 048 246]
  end

  def play
    while !game_finished
      next_player_makes_move
      @board.display_playing_board
    end
    puts "Congratulations #{current_player.name}, you have won!"
  end

  def game_finished
    @winning_combos.any? do |combo|
      matching_in_a_line?(combo)
    end
  end


  def next_player_makes_move
    if @board.update_playing_board(user_input, current_player) == true
      switch_players
    end
  end

  def user_input
    puts "Pick a spot"
    chosen_position = gets.chomp.to_i

    while ![*0..8].include?(chosen_position)
      puts chosen_position
      puts "Illegal input, try a number between 0-8"
      chosen_position = gets.chomp.to_i
    end
    chosen_position
  end

  def current_player
    if @last_player == @player_two
      @player_one
    else
      @player_two
    end

  end

  def switch_players
    puts "is being called"
    if @last_player == @player_two
      @last_player = @player_one
    else
      @last_player = @player_two
    end
  end

  def matching_in_a_line?(combo)
    combo = combo.to_s.split("").map(&:to_i)
    in_a_line = [@board_array[combo[0]], @board_array[combo[1]], @board_array[combo[2]]]
    in_a_line.all? && in_a_line.uniq.count == 1
  end
end
