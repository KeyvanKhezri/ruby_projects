
# frozen_string_literal: true
require_relative 'game'
require 'date'

RSpec.describe Game do
  describe '#price' do
    it 'returns the price' do
      test_game = Game.new(title: 'last of us', price: 30, category: nil, date: nil, reviews: nil)

      expect(test_game.price).to eq(30)
    end
  end

  describe '#title' do
    it 'returns the game title, capitalizing the start of each word' do
      test_game = Game.new(title: 'last of us', price: 30, category: nil, date: nil, reviews: nil)

      expect(test_game.title).to eq('Last Of Us')
    end
  end

  describe '#category' do
    it 'returns the game category' do
      test_game = Game.new(title: nil, price: nil,  category: 'Horror', date: nil, reviews: nil)

      expect(test_game.category).to eq('Horror')
    end
  end

  describe '#over_18?' do
    it 'returns true if the game is a horror' do
      test_game = Game.new(title: nil, price: nil, category: 'Horror', date: nil, reviews: nil)

      expect(test_game.over_18?).to be true
    end
  end

  describe '#released?' do
    it 'returns true if the game is released today or earlier' do
      test_game = Game.new(title: 'last of us', price: nil, category: nil, date: Date.parse('2020-05-05'), reviews: nil)

      expect(test_game.released?).to be true

    end

    it 'returns false if the game is released after today' do
      test_game = Game.new(title: 'halo', price: nil, category: nil, date: Date.parse('2020-11-05'), reviews: nil)

      expect(test_game.released?).to be false
    end
  end

  describe '#blockbuster?' do
    it 'returns true if all the games ratings are 8 and above' do
      reviews = [
        Review.new(stars: 10, description: nil),
        Review.new(stars: 10, description: nil)
      ]
      test_game = Game.new(title: 'last of us', price: nil, category: nil, date: nil, reviews: reviews)

      expect(test_game.blockbuster?).to be true
    end

    it 'returns false if one of the games ratings is below 8' do
      reviews = [
        Review.new(stars: 7, description: nil),
        Review.new(stars: 9, description: nil)
      ]
      test_game = Game.new(title: 'halo', price: nil, category: nil, date: nil, reviews: reviews)

      expect(test_game.blockbuster?).to be false
    end
  end

  describe '#reviews' do
    it 'returns a list of review descriptions' do
      reviews = [
        Review.new(stars: nil, description: 'It is decent'),
        Review.new(stars: nil, description: 'It is a slap')
      ]
      test_game = Game.new(title: 'halo', price: nil, category: nil, date: nil, reviews: reviews)

      expect(test_game.review_statements).to eq(['It is decent', 'It is a slap'])
    end
  end
end
