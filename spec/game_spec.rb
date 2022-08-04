require_relative '../model/game'
require 'date'

describe Game do
  game = Game.new('50', '2022-08-04', '1982-12-01')
  context '... this class...' do
    it 'should initialize with multiplayer and last_played_date' do
      expect(game.multiplayer).not_to be_nil
      expect(game.last_played_at).to be_a(Date)
      expect(game.publish_date).to eq(Date.parse('1982-12-01'))
    end

    it 'should detect if the game multiplayer is same' do
      expect(game.multiplayer).to eq '50'
    end

    it 'should detect if the Game last_played_at is same' do
      expect(game.last_played_at).to eq(Date.parse('2022-08-04'))
    end

    it 'should detect if the Game publish_date is same' do
      expect(game.publish_date).to eq(Date.parse('1982-12-01'))
    end

    it 'should test whether game object is instance of Game class' do
      expect(game).to be_a Game
    end

    it 'should check if archive returns false' do
      expect(game.archived).to eq false
    end
  end
end
