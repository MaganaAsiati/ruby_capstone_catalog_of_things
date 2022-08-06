
require_relative './app'
require_relative './input'
require_relative './storage'
require './options'
def main
  app = App.new
  app.populate_app
  storage = Storage.new
  storage.prepare_storage
  storage.load_data(app)
  options(app)
  puts 'Thank you for using our service :)'
end

main
