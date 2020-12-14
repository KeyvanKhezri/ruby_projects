# require_relative 'tic_tac_toe.rb'


class Player

  def initialize(player_name, player_marker)
    @name = player_name
    @marker = player_marker
  end

  attr_accessor :name, :marker
end



