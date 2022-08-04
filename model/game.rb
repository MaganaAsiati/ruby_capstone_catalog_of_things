require 'date'
require_relative './item'
class Game < Item
  attr_accessor :multiplayer, :last_played_at, :publish_date
  attr_reader :id

  def initialize(multiplayer, last_played_at, publish_date)
    super(publish_date)
    @id = Random.rand(1..1000)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end

  def can_be_archived?
    super && (Date.today.year - @last_played_at.year) > 2
  end
end
