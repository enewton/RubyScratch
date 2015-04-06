
class Sprite
    
    def initialize(window)
        @name = "Untitled"
        @x = @y = @vel_x = @vel_y = @angle = 0.0
        @costumes = [""]
        @costume = ""
        init

        file = File.join(File.dirname(__FILE__), '..', 'costumes', @costume + ".png")
        @image = Gosu::Image.new(window, file, false)
    end
    
    def draw
        @image.draw_rot(@x, @y, 1, @angle)
    end
    
    def turn_left
        @angle -= 4.5
    end
    
    def turn_right
        @angle += 4.5
    end
    
    def set_x(x)
        @x = x
    end
    
    def set_y(y)
        @y = y
    end
    
end
