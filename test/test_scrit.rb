require 'minitest/autorun'
require 'scrit'

class ScritTest < Minitest::Test
  def setup
    @sprite = Sprite.new(nil)
  end
  
  def test_default_x_position
    assert_equal 0, @sprite.x_position
  end
  
  def test_default_y_position
    assert_equal 0, @sprite.y_position
  end
  
  def test_default_direction
    assert_equal 0, @sprite.direction
  end
end