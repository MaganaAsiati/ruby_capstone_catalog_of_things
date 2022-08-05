require './classes/music_album'
require 'date'

describe MusicAlbum do
  it 'should initialize with a name' do
    album = MusicAlbum.new(Date.parse('28-03-1994'), 'The Division Bell', 'y')
    expect(album.name).to eq('The Division Bell')
  end

  it 'should initialize with a publish date' do
    album = MusicAlbum.new(Date.parse('28-03-1994'), 'The Division Bell', 'y')
    expect(album.publish_date).to eq(Date.parse('28-03-1994'))
  end

  it 'returns the correct year' do
    date = Date.parse('28-03-1994')
    album = MusicAlbum.new(date, 'The Division Bell', 'y')
    expect(album.publish_date.year).to eq(1994)
  end

  it 'should initialize with on_spotify' do
    album = MusicAlbum.new(Date.parse('28-03-1994'), 'The Division Bell', 'y')
    expect(album.on_spotify).to eq(true)
  end
end
