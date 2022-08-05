require_relative './model/label'
require_relative './model/genre'
class App
  attr_reader :genres, :authors, :labels, :books, :albums

  def initialize
    @genres = []
    @authors = []
    @labels = []
    @books = []
    @albums = []
  end

  def populate_app
    labels = [Label.new(title: 'Drama', color: 'red'), Label.new(title: 'Fantasy', color: 'green')]
    labels.each { |label| @labels.push(label) }

    genres = [Genre.new(name: 'Comedy'), Genre.new(name: 'Thriller')]
    genres.each { |genre| @genres.push(genre) }
  end

  def add_genre(item)
    @genre.add_item(item)
  end

  def add_author(item)
    # @author.add_item(item)
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

  def list_genres
    @genres.each_with_index do |genre, index|
      puts "#{index}. [#{genre.class}] - Name: #{genre.name}"
    end
  end
end
