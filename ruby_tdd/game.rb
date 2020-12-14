require 'pry'
require_relative 'review'

class Game

  def initialize(title:, price:, category:, date:, reviews: )
    @title = title
    @price = price
    @category = category
    @date = date
    @reviews = reviews
  end

  def title
    #binding.pry
    @title.split.map { |word|
      word.capitalize
    }.join(" ")
  end

  def over_18?
    if category == 'Horror'
      return true
    end
  end

  def released?
    @date <= Date.today
  end

  def blockbuster?
    #binding.pry
    reviews.all? { |review| review.stars >= 8}
  end

  def review_statements
    reviews.map { |review| review.description}
  end

  attr_reader :price, :category, :reviews
end
