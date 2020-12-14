# frozen_string_literal: true
require_relative 'review'

RSpec.describe Review do
  describe '#stars' do
    it 'returns a integer from 1-10' do
      test_review = Review.new(stars: 5, description: nil)

      expect(test_review.stars).to eq(5)
    end

    it 'returns false if lower than 1' do
      test_review = Review.new(stars: 0, description: nil)

      expect(test_review.stars).to eq(false)
    end

    it 'returns false if greater than 10' do
      test_review = Review.new(stars: 11, description: nil)

      expect(test_review.stars).to eq(false)
    end
  end

  describe '#description' do
    it 'returns false if string is empty' do
      test_review = Review.new(stars: nil, description: '')

      expect(test_review.description).to be true
    end

    it 'returns true if string is not empty' do
      test_review = Review.new(stars: nil, description: 'It is what it is')

      expect(test_review.description).to eq('It is what it is')
    end
  end
end
