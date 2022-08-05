require_relative './app'
require_relative './input'
require_relative './storage'
require_relative './options'
def main
  # Add some logic for the database
  app = App.new
  app.populate_app
  storage = Storage.new
  storage.prepare_storage
  storage.load_data(app)
  options
  puts 'Thank you for using our service :)'
end

main
