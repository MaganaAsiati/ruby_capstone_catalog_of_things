require_relative 'data/data_album'
require_relative 'classes/music_album'
require_relative 'classes/genre'
require 'date'

class App
  def initialize
    @genres = []
    @albums = []
  end

  def run
    load_preserve_data
    puts 'Welcome To The Catalog of My Things!'
    puts
    puts
    until list_options
      input = gets.chomp
      if input == '3'
        puts 'Thanks for using the catalog!'
        break
      end
      option(input)
    end
  end

  def list_albums
    puts
    puts 'There are no albums to list. Select (2) to create one.' if @albums.empty?

    @albums.each do |album|
      puts "ID: #{album.id}: Name: #{album.name} Genre: #{album.genre.name} On_Spotify: #{album.on_spotify}"
      puts
    end
  end

  def list_genres
    puts
    puts 'There are no genres! You can create one by adding a genre.' if @genres.empty?

    @genres.each_with_index { |genre, index| puts "#{index}: Name: #{genre.name}" }
    puts
    puts
  end

  def create_album
    puts 'Name: '
    name = gets.chomp

    puts 'Publish Date (DD-MM-YYYY): '
    date = Date.parse(gets.chomp)

    puts 'Genre: '
    genre_name = gets.chomp

    puts 'On Spotify (y/n): '
    on_spotify = gets.chomp

    album = MusicAlbum.new(date, name, on_spotify)
    genre = Genre.new(genre_name)

    @albums << album
    @genres << genre

    genre.add_item(album)

    save_album(date, name, genre_name, on_spotify)

    puts "#{name} has been added to the list."
  end

  def load_preserve_data
    load_album_genre @albums, @genres
  end
end
