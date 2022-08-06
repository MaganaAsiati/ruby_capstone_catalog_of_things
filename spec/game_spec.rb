require_relative '../model/game'
require 'date'

describe Game do
  before :each do
    @game = Game.new(multiplayer:'50', last_played_at:'2022-08-04')
  end
    it 'is initialized' do
    @game.should be_an_instance_of Game
  end
    it 'should initialize with multiplayer and last_played_date' do
      expect(@game.multiplayer).not_to be_nil
      expect(@game.last_played_at).to be_a(Date)
    end

    it 'should detect if the game multiplayer is same' do
      expect(@game.multiplayer).to eq '50'
    end
    it 'last played date is 2022-08-04 ' do
      expect @last_played_at == '2022-08-04'
    end
  
    it 'should return false' do
      expect(@game.archived).to be(false)
    end
  
    it 'should return true' do
      @game.move_to_archive
      expect(@game.archived).to be(false)
    end
end
