
class Stage
    def initialize(window)
        @backdrops = ["space"]
        #puts __FILE__
        #puts File.dirname(__FILE__)
        @file = File.join(File.dirname(__FILE__), '..', 'backdrops', @backdrops[0] + ".png")
        #puts @file
        @background_image = Gosu::Image.new(window, @file, true)
        #@background_image = Gosu::Image.new(window, "../backdrops/space.png", true)
        #@background_image = Gosu::Image.new(window, "./backdrops/" + @backdrops[0] + ".png", true)
    end
    def draw
        @background_image.draw(0, 0, 0)
    end
end
