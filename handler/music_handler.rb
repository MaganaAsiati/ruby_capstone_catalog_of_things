require_relative '../model/music_album'
require_relative '../storage'

class MusicHandler
  @storage = Storage.new
  def self.add_music_album(app)
    puts 'Please, Add Music album : '
    puts 'Is it on Spotify : '
    on_spotify = gets.chomp
    music_album = MusicAlbum.new(on_spotify: on_spotify)
    app.create_music_album(music_album)
    puts 'Music album added successfully !!!'
    @storage.save_music_album(app)
  end

  def self.list_music_albums(app)
    puts 'This is all the albums we have : '
    app.albums.each_with_index do |music_album, index|
      puts "#{index + 1}. [#{music_album.class}] - On Spotify: #{music_album.on_spotify}"
    end
  end
end
