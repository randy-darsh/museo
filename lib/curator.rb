require 'pry'
require './lib/artist'
require './lib/museum'
require './lib/photograph'

class Curator

  attr_reader :artists,
              :museums,
              :photographs

  def initialize
    @artists = []
    @museums = []
    @photographs = []
  end

  def add_museum(museum_hash)
    @museums << museum_hash
  end

  def add_artist(artist_hash)
    @artists << artist_hash
  end

  def add_photograph(photograph_hash)
    @photographs << photograph_hash
  end
  binding.pry

end
