require_relative 'library'

RSpec.describe Library do
  describe '#game_names' do
    it 'returns the names of all the games in the library' do
      games = [
        Game.new(title: 'last of us', price: 10, category: 'Horror', date: nil, reviews: nil),
        Game.new(title: 'Halo', price: 30, category: 'Shooter', date: nil, reviews: nil)
      ]
      library = Library.new(games: games)

      expect(library.game_names).to eq(['Last Of Us', 'Halo'])
    end
  end

  describe '#cost' do
    it 'returns the total cost of the games' do
      games = [
        Game.new(title: 'last of us', price: 10, category: 'Horror', date: nil, reviews: nil),
        Game.new(title: 'Halo', price: 30, category: 'Shooter', date: nil, reviews: nil)
      ]
      library = Library.new(games: games)

      expect(library.cost).to eq(40)
    end
  end

  describe '#genres' do
    it 'returns the list of genres in the library' do
      games = [
        Game.new(title: 'last of us', price: 10, category: 'Horror', date: nil, reviews: nil),
        Game.new(title: 'Left for dead', price: 10, category: 'Horror', date: nil, reviews: nil),
        Game.new(title: 'Halo', price: 30, category: 'Shooter', date: nil, reviews: nil)
      ]
      library = Library.new(games: games)

      expect(library.genres).to eq(['Horror', 'Shooter'])
    end
  end
end
