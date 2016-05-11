
class Stage
    
    def initialize(window)
        @window = window
        @backdrops = ["white"]
        @file = File.join(File.dirname(__FILE__), '..', 'backdrops', @backdrops[0] + ".png")
        @background_image = Gosu::Image.new(window, @file, true)
    end
    
    def draw
        #@background_image.draw(0, 0, ZOrder::Background)
        @background_image.draw_as_quad(0, 0, 0xffffffff, @window.width, 0, 0xffffffff, @window.width, @window.height, 0xffffffff, 0, @window.height, 0xffffffff, 0)
    end
    
    def backdrops
        @backdrops
    end
    
    def switch_backdrop_to(name)
        @file = File.join(File.dirname(__FILE__), '..', 'backdrops', name + ".png")
        @background_image = Gosu::Image.new(@window, @file, true)
    end
end
