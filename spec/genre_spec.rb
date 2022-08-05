require_relative '../model/item'
require_relative '../model/genre'
require 'date'

describe Genre do
  before :each do
    @item = Item.new(publish_date: '2010-10-14')
    @genre = Genre.new(name: 'The bane')
  end
  it 'is initialized' do
    expect(@genre).to be_kind_of Genre
  end

  it 'should have empty item list' do
    expect(@genre.items.length).to eq(0)
  end

  it 'Should return item list equal to 1' do
    @genre.add_item(@item)
    expect(@genre.items.length).to eq(1)
  end
end
