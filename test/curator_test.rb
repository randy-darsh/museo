require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

class CuratorTest < Minitest::Test

  def setup
    @curator = Curator.new
  end

  def test_it_exists
    assert_instance_of Curator, @curator
  end

  def test_knows_about_artists
    assert_equal [], @curator.artists
  end

  def test_it_knows_about_museums
    assert_equal [], @curator.museums
  end

  def test_it_knows_about_photographs
    assert_equal [], @curator.photographs
  end

  def test_it_can_add_a_museum
    @curator.add_museum(Museum.new({id: 1, name: "MoMA"}))
    assert_equal 1, @curator.museums.count
  end

  def test_it_can_add_an_artist
    @curator.add_artist(Artist.new({id: 1, name: "Ansel Adams", born: 1902, died: 1984, country: "United States"}))
    assert_equal 1, @curator.artists.count
  end

  def test_it_can_add_a_photograph
    @curator.add_photograph(Photograph.new({id: 1, name: "Moonrise, Hernandez", artist_id: 1, museum_id: 1, year: 1941}))
    assert_equal 1, @curator.photographs.count
  end

end
