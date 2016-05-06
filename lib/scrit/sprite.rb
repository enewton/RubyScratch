
class Sprite
    
    def initialize(window)
        @name = "Untitled"
        @x = @y = @vel_x = @vel_y = @angle = 0.0
        @scale = 1
        @costumes = ["costume1"]
        @sounds = [""]
        @current_costume = 0
        
        init
        
        @window = window

        file = File.join(File.dirname(__FILE__), '..', 'costumes', @costumes[@current_costume] + ".png")
        @image = Gosu::Image.new(window, file, false)

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
    
    def draw
        @image.draw_rot(@x + 240, 180 - @y, 1, @angle, 0.5, 0.5, @scale, @scale)
    end
    
    def direction
        @angle
    end
    
    def turn_left(angle)
        @angle -= angle
    end
    
    def turn_right(angle)
        @angle += angle
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
