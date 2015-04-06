require 'gosu'
require 'itchy/sprite'
require 'itchy/stage'

class Cloud < Sprite
    
    def init
        @name = "Cloud"
        @costume = "bigbluecloud"
        set_y_to(240)
    end
    
    def update
        if key_pressed? Gosu::KbLeft
            change_x_by(-5)
        end
        if key_pressed? Gosu::KbRight
            change_x_by(5)
        end
    end
end

class Itchy < Gosu::Window
    
    def initialize
        super 640, 480, false
        self.caption = "Itchy (Scratch in Ruby)"
    
        @stage = Stage.new(self)
        @sprite = Cloud.new(self)
    end

    def update
        @sprite.update
    end

    def draw
        @stage.draw
        @sprite.draw
    end

    def button_down(id)
        if id == Gosu::KbEscape
            close
        end
    end

end

window = Itchy.new
window.show
