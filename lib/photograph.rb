require 'pry'

class Photograph

  attr_reader :id,
              :artist_id,
              :museum_id,
              :year

  def initialize(photo_hash)
    @id = photo_hash[:id]
    @artist_id = photo_hash[:artist_id]
    @museum_id = photo_hash[:museum_id]
    @year = photo_hash[:year]
  end

end
