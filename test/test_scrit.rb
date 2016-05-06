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
  
  def test_set_x
    @sprite.set_x_to(5)
    assert_equal 5, @sprite.x_position
  end
  
  def test_change_x
    @sprite.set_x_to(-2)
    @sprite.change_x_by(6)
    assert_equal 4, @sprite.x_position
  end
  
  def test_set_y
    @sprite.set_y_to(5)
    assert_equal 5, @sprite.y_position
  end
  
  def test_change_y
    @sprite.set_y_to(-2)
    @sprite.change_y_by(6)
    assert_equal 4, @sprite.y_position
  end
end