require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < Minitest::Test

  def setup
    @photograph = Photograph.new({id: 1,
                                  name: "Rue Mouffetard, Paris (Boy with Bottles)",
                                  artist_id: 4,
                                  museum_id: 2,
                                  year: 1954})
  end

  def test_it_exists
    assert_instance_of Photograph, @photograph
  end

  def test_is_has_an_id
    assert_equal 1, @photograph.id
  end

  def test_it_has_an_artist_id
    assert_equal 4, @photograph.artist_id
  end

  def test_it_has_a_museum_id
    assert_equal 2, @photograph.museum_id
  end

  def test_it_has_a_year
    assert_equal 1954, @photograph.year
  end
end
