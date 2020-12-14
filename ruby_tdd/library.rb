require 'pry'
require_relative 'game'

class Library

  def initialize(games:)
    @games = games
  end

  def game_names
    # @games.map { |game| game.title }
    games.map(&:title)
  end

  def cost
    #@games.map { |game| game.price }.sum
    games.map(&:price).sum
  end

  def genres
    #@games.map { |game| game.category }.uniq
    games.map(&:category).uniq
  end

  attr_reader :games
end


#@some_array.map { |x| x.some_method }

#@some_array.map(&:some_method)
