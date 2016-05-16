
class Sprite
    
  attr_accessor :x, :y, :direction
  attr_accessor :costumes
  
  def initialize(options = {})
    @x = @y = @direction = 0.0
    @scale = 0.5
    @costumes = ["costume1"]
    @image = {}
    @sounds = [""]
    @current_costume = 0

    options.each {|k,v| send("#{k}=",v)}

    init
    
    @costumes.each do |name|
      file = File.join(File.dirname(__FILE__), '..', 'costumes', name + ".png")
      @image[name] = Gosu::Image.new(file)
    end

    @@keymap = {
      up_arrow:    Gosu::KbUp,
      down_arrow:  Gosu::KbDown,
      left_arrow:  Gosu::KbLeft,
      right_arrow: Gosu::KbRight,
      space:       Gosu::KbSpace
    }
  end
  
  def init
  end
  
  def script
  end
  
  def switch_costume_to(name)
    @current_costume = @costumes.index(name)
    raise ArgumentError, 'Unknown costume: ' + name if @current_costume.nil?
  end
  
  def draw
    @image[@costumes[@current_costume]].draw_rot(@x + 240, 180 - @y, 1, @direction, 0.5, 0.5, @scale, @scale)
  end
  
  def touching_left
    @x <= -240
  end
  
  def touching_right
    @x >= 240
  end
  
  def touching_bottom
    @y <= -180
  end
  
  def touching_top
    @y >= 180
  end
   
  def turn_left(angle)
    @direction -= angle
  end
  
  def turn_right(angle)
    @direction += angle
  end
  
  def set_x_to(x)
    @x = x
  end
  
  def change_x_by(delta)
    @x += delta
  end
  
  def x_position
    @x
  end
  
  def set_y_to(y)
    @y = y
  end
  
  def change_y_by(delta)
    @y += delta
  end
  
  def y_position
    @y
  end
  
  def key_pressed?(k)
    @window.button_down? @@keymap[k]
  end
  
  def set_size_to_percent(p)
    @scale = p
  end
end
