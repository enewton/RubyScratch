
class Sprite
    
    def initialize(window)
        @name = "Untitled"
        @x = @y = @vel_x = @vel_y = @angle = 0.0
        @costumes = [""]
        @current_costume = 0
        init
        @window = window

        file = File.join(File.dirname(__FILE__), '..', 'costumes', @costumes[@current_costume] + ".png")
        @image = Gosu::Image.new(window, file, false)
        
        @keymap = { left_arrow: Gosu::KbLeft, right_arrow: Gosu::KbRight }
    end
    
    def draw
        @image.draw_rot(@x, @y, 1, @angle)
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
    
    def set_y_to(y)
        @y = y
    end
    
    def change_y_by(delta)
        @y += delta
    end
    
    def key_pressed?(k)
        @window.button_down? @keymap[k]
    end
    
end
