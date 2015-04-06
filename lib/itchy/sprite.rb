
class Sprite
    
    def initialize(window)
        @name = "Untitled"
        @x = @y = @vel_x = @vel_y = @angle = 0.0
        @costumes = [""]
        @costume = ""
        init
        @window = window

        file = File.join(File.dirname(__FILE__), '..', 'costumes', @costume + ".png")
        @image = Gosu::Image.new(window, file, false)
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
    
    def change_x_by(d)
        @x += d
    end
    
    def set_y_to(y)
        @y = y
    end
    
    def change_y_by(d)
        @y += d
    end
    
    def key_pressed?(k)
        @window.button_down? k
    end
    
end
