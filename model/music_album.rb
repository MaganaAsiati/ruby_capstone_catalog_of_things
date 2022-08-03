require 'date'
require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify
  attr_reader :id

  def initialize(on_spotify: false)
    super(can_be_archived?)
    @id = Random.rand(1..1000)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify = true
  end
end
