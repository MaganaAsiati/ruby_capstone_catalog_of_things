require_relative '../model/game'
require_relative '../storage'

class GameHandler
  @storage = Storage.new
  def self.add_game(app)
    print 'Enter number of players: '
    multiplayer = gets.chomp

    print 'Enter Last Played Date format[yyyy-mm-dd]: '
    last_played_at = gets.chomp

    print 'Enter Date Published format[yyyy-mm-dd]: '
    publish_date = gets.chomp
    game = Game.new(multiplayer: multiplayer, last_played_at: last_played_at, publish_date: publish_date)
    app.create_game(game)
    puts 'game created successfully !!!'
    @storage.save_games(app)
  end

  def self.list_games(app)
    result = app.games
    puts result
    result&.each_with_index do |game, index|
      puts "#{index}. [#{game.class}] - Multiplayer: #{game[:multiplayer]}, Last Played Date: #{game[:last_played_at]},
      Publish Date: #{game[:publish_date]}"
    end
  end
end
