require 'json'
require './model/game'
require './model/book'
require './model/music_album'
class Storage
  attr_accessor :files

  def initialize
    @files = %w[books.json games.json albums.json]
  end

  def prepare_storage
    @files.each do |filename|
      File.new(filename, 'w+') unless File.file?(filename)
    end
  end

  # Implement your own logic to save your data
  def save_book(app)
    return unless File.file?('books.json')

    people_file = File.open('books.json', 'w')
    people_file.write(JSON.generate(app.books))
    people_file.close
  end

  def save_music_album(app)
    return unless File.file?('albums.json')

    music_file = File.open('albums.json', 'w')
    music_file.write(JSON.generate(app.albums))
    music_file.close
  end

  # Implement your own logic to save your dat

  def save_games(app)
    return unless File.file?('games.json')

    game_file = File.open('games.json', 'w')
    game_file.write(JSON.generate(app.games))
    game_file.close
    puts 'Loading informations...'
    load_book(app)
    load_music_album(app)
  end

  # this method is called to load all data
  def load_data(app)
    puts 'Loading informations...'
    load_book(app)
    load_music(app)
    load_games(app)
  end

  def load_book(app)
    return unless File.file?('books.json')
    return if File.zero?('books.json')

    book_file = File.open('books.json', 'r')
    book_list = JSON.parse(book_file.read)
    book_list.each do |book|
      app.create_book(Book.new(cover_state: book['cover_state'], publisher: book['publisher']))
    end
    # puts app.books
    book_file.close
  end

  def load_music_album(app)
    return unless File.file?('albums.json')
    return if File.zero?('albums.json')

    music_file = File.open('albums.json', 'r')
    music_list = JSON.parse(music_file.read)
    music_list.each { |music| app.create_music_album(MusicAlbum.new(on_spotify: music['on_spotify'])) }
    # puts app.albums
    music_file.close
  end

  def load_games(app)
    return unless File.file?('games.json')
    return if File.zero?('games.json')

    game_file = File.open('games.json', 'r')
    game_list = JSON.parse(game_file.read)
    game_list.each do |game|
      app.create_game(Game.new(game['multiplayer'], game['last_played_date'], game['publish_date']))
    end
    game_file.close
  end
end
