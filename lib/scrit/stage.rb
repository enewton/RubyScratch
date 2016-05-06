
class Stage
    
    def initialize(window)
        @backdrops = ["space"]
        @file = File.join(File.dirname(__FILE__), '..', 'backdrops', @backdrops[0] + ".png")
        @background_image = Gosu::Image.new(window, @file, true)
    end
    
    def draw
        @background_image.draw(0, 0, 0)
    end
end
