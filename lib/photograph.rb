require 'pry'

class Photograph

  attr_reader :id,
              :artist_id,
              :museum_id,
              :year

  def initialize(photograph_hash)
    @id = photograph_hash[:id]
    @artist_id = photograph_hash[:artist_id]
    @museum_id = photograph_hash[:museum_id]
    @year = photograph_hash[:year]
  end

end
