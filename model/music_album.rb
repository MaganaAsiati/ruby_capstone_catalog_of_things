require 'date'
require_relative './item'
class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify: true)
    # super(publish_date: '2020-10-14')
    super(publish_date: Date.today.to_s)
    @on_spotify = on_spotify
  end

  def to_json(*_args)
    JSON.dump({
                on_spotify: @on_spotify
              })
  end

  private

  def can_be_archived?
    true if super && @on_spotify
  end
end
