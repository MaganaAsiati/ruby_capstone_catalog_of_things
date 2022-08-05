require_relative './model/label'

require_relative './model/author'
require_relative './model/game'
require_relative './model/genre'
class App
  attr_reader :genres, :authors, :labels, :books, :albums


  def initialize
    @genres = []
    @authors = []
    @labels = []
    @games = []
    @books = []
    @albums = []
  end

  def populate_app
    labels = [Label.new(title: 'Drama', color: 'red'), Label.new(title: 'Fantasy', color: 'green')]
    labels.each { |label| @labels.push(label) }

    authors = [Author.new(first_name: 'name1', last_name: 'name2'), Author.new(first_name: 'name1', last_name: 'name2')]
    authors.each { |author| @authors.push(author) }

    genres = [Genre.new(name: 'Comedy'), Genre.new(name: 'Thriller')]
    genres.each { |genre| @genres.push(genre) }

  end

  def add_genre(item)
    @genre.add_item(item)
  end

  # def add_author(item)
  #   @author.add_item(item)
  # end

  def add_game
    print 'Enter number of players: '
    multiplayer = gets.chomp

    print 'Enter Last Played Date format[yyyy-mm-dd]: '
    last_played_at = gets.chomp

    print 'Enter Date Published format[yyyy-mm-dd]: '
    publish_date = gets.chomp

    games = [Game.new(multiplayer, last_played_at, publish_date)]

    games.each { |game| @games.push(game) }
  end

  def create_book(book)
    @books << book
  end

  def create_music_album(music_album)
    @albums << music_album
  end

  # Label part
  def add_label(item)
    @labels.add_item(item)
  end

  def list_labels
    @labels.each_with_index do |label, index|
      puts "#{index}. [#{label.class}] - Title: #{label.title}, Color: #{label.color}"
    end
  end
  def list_games
    @games.each_with_index do |game, index|
      puts "#{index}. [#{game.class}] - Multiplayer: #{game.multiplayer}, Last Played Date: #{game.last_played_at},
      Publish Date: #{game.publish_date}"
    end
  end

  def list_authors
    @authors.each_with_index do |author, index|
      puts "#{index}. [#{author.class}] - First Name: #{author.first_name}, Last Name: #{author.last_name}"
  def list_genres
    @genres.each_with_index do |genre, index|
      puts "#{index}. [#{genre.class}] - Name: #{genre.name}"
    end
  end
end
