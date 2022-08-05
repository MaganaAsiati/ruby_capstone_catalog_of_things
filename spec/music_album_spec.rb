require_relative '../model/music_album'
require 'date'

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new(on_spotify: true)
  end
  it 'returns a new Item object' do
    @music_album.should be_an_instance_of MusicAlbum
  end

  it 'should return true if on spotify' do
    expect(@music_album.on_spotify). to be(true)
  end

  it 'should return false' do
    expect(@music_album.archived).to be(false)
  end

  it 'should return true' do
    @music_album.move_to_archive
    expect(@music_album.archived).to be(false)
  end
end
