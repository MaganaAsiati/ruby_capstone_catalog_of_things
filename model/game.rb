require 'date'
require_relative './item'
class Game < Item
  attr_accessor :multiplayer, :last_played_at, :publish_date
  attr_reader :id

<<<<<<< HEAD
  def initialize(multiplayer:, last_played_at:, publish_date:)
    super(publish_date)
=======
  def initialize(multiplayer:, last_played_at:)
    super(publish_date: Date.today.to_s)
>>>>>>> 6bb53c92d4dbe9daf8fb7ce9d9064a9d4009f00e
    @id = Random.rand(1..1000)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end

  def to_json(*_args)
    JSON.dump({
                multiplayer: @multiplayer,
                last_played_at: @last_played_at,
                publish_date: @publish_date
              })
  end

  private

  def can_be_archived?
    super && (Date.today.year - @last_played_at.year) > 2
  end
end
