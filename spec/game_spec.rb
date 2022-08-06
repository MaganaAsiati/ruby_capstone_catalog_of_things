require_relative '../model/game'

describe Game do
  before :each do
    @game = Game.new('multiplayer', '2010-06-29', '2010-01-01')
  end

  it 'game should be an instance of game class' do
    expect(@game).to be_an_instance_of Game
  end

  it 'last played date is 2010-06-29' do
    expect @last_played_date == '2010-06-29'
  end

  it 'should return false' do
    expect(@game.archived).to be(false)
  end

  it 'should return true' do
    @game.move_to_archive
    expect(@game.archived).to be(true)
  end
end
