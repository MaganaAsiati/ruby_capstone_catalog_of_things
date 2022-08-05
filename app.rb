require_relative './model/label'
require_relative './model/author'
require_relative './model/game'
class App
  attr_reader :genres, :authors, :labels, :games

  def initialize
    @genres = []
    @authors = []
    @labels = []
    @games = []
  end

  def populate_app
    labels = [Label.new(title: 'Drama', color: 'red'), Label.new(title: 'Fantasy', color: 'green')]
    labels.each { |label| @labels.push(label) }

    authors = [Author.new(first_name: 'name1', last_name: 'name2'), Author.new(first_name: 'name1', last_name: 'name2')]
    authors.each { |author| @authors.push(author) }
  end

  def create_game(game)
    @games << game
  end

  def add_genre(item)
    # @genre.add_item(item)
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

  def add_author(item)
    @authors.add_item(item)
  end

  def list_authors
    @authors.each_with_index do |author, index|
      puts "#{index}. [#{author.class}] - First Name: #{author.first_name}, Last Name: #{author.last_name}"
    end
  end
end
