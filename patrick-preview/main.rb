require_relative './app'

def main
  app = App.new
  app.run
end

def list_options
  puts 'Please choose an option by entering a number'
  puts '1 - List all music albums'
  puts '2 - Create a new music album'
  puts '3 - Exit'
end

def option(input)
  case input
  when '1'
    list_albums
  when '2'
    create_album
  else
    puts "Invalid option: #{input}"
  end
end

main
