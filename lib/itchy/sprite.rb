
class Sprite
    
    @name = "Untitled"
    
    def initialize(window)
        @costumes = ["bigbluecloud"]
        file = File.join(File.dirname(__FILE__), '..', 'costumes', @costumes[0] + ".png")
        @image = Gosu::Image.new(window, file, false)
        @x = @y = @vel_x = @vel_y = @angle = 0.0
    end
    
    def draw
        @image.draw_rot(@x, @y, 1, @angle)
    end
end
