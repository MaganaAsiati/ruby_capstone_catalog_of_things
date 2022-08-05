require 'json'
require './model/game'
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

  # this method is called to save all data
  def save_data(app)
    save_games(app)
  end

  # this method is called to load all data
  def load_data(app)
    load_games(app)
  end

  def load_games(app)
    return unless File.file?('games.json')
    return if File.zero?('games.json')

    game_file = File.open('games.json', 'r')
    game_list = JSON.parse(game_file.read)
    game_list.each do |game|
      app.create_game(multiplayer: game['multiplayer'], last_played_at: game['last_played_at'],
                      publish_date: game['publish_date'])
    end
    # puts app.games
    game_file.close
  end

  # Implement your own logic to save your data
  def save_book(app); end

  def save_games(app)
    return unless File.file?('games.json')

    game_file = File.open('games.json', 'w')
    game_file.write(JSON.generate(app.games))
    game_file.close
  end
end
