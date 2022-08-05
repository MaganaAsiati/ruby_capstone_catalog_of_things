require './classes/genre'

describe Genre do
  it 'should initialize with a name' do
    genre = Genre.new('Pop')
    expect(genre.name).to eq('Pop')
  end

  it 'returns the correct name' do
    genre = Genre.new('Pop')
    expect(genre.name).to eq('Pop')
  end

  it 'should add items to the genre' do
    genre = Genre.new('Pop')
    album = MusicAlbum.new(Date.parse('28-03-1994'), 'The Division Bell', 'y')
    genre.add_item(album)
    expect(genre.items).to eq([album])
  end

  it 'should return the correct number of items' do
    genre = Genre.new('Pop')
    album = MusicAlbum.new(Date.parse('28-03-1994'), 'The Division Bell', 'y')
    genre.add_item(album)
    expect(genre.items.count).to eq(1)
  end
end
