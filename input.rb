require_relative './app'
require_relative './handler/game_handler'
require_relative './handler/book_handler'
require_relative './handler/music_handler'

class Input
  def self.check_input(input, app)
    case input
    when 1..6
      list_data(input, app)
    when 7..9
      add_data(input, app)
    when 0
      puts 'Goodbye!'
      raise StopIteration
    else
      puts "You input #{input}"
    end
  end

  def self.list_data(input, app)
    case input
    when 1
      #   List all books
      puts 'List of books'
      BookHandler.list_books(app)
    when 2
      #  List all music albums
      puts 'List of music albums'
      MusicHandler.list_music_albums(app)
    when 3
      puts 'List all games'
      GameHandler.list_games(app)
    when 4
      #  List all genres
      puts 'List of genres'
      app.list_genres
    when 5
      puts 'List all labels'
      app.list_labels
    when 6
      puts 'List all authors'
      app.list_authors
    else
      puts 'invalid input'
    end
  end

  def self.add_data(input, app)
    case input
    when 7
      #  Add a book
      BookHandler.add_book(app)
    when 8
      #  Add a music album
      MusicHandler.add_music_album(app)
    when 9
      puts 'Add Game'
      GameHandler.add_game(app)
    else
      puts 'invalid input'
    end
  end
end
