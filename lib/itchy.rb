require 'gosu'
require 'itchy/sprite'
require 'itchy/stage'

class Cloud < Sprite
    
    def init
        @name = "Cloud"
        @costumes = ["bigbluecloud"]
        @sounds = ["meow"]
        set_x_to 0
        set_y_to 100
    end
    
    def scripts
        if key_pressed? :left_arrow
            change_x_by -5
        end
        if key_pressed? :right_arrow
            change_x_by 5
        end
        if key_pressed? :up_arrow
            change_y_by 5
        end
        if key_pressed? :down_arrow
            change_y_by -5
        end
    end
end

class Fish < Sprite
    
    def init
        @name = "Fish"
        @costumes = ["BlueFish4"]
        @sounds = ["meow"]
        set_x_to 0
        set_y_to 0
    end
    
    def scripts
    end
end

class Itchy < Gosu::Window
    
    def initialize
        super 480, 360, false
        self.caption = "Itchy (Scratch in Ruby)"
    
        @stage = Stage.new(self)
        @sprites = [Cloud.new(self), Fish.new(self)]
    end

    def update
        @sprites.each { |s| s.scripts }
    end

    def draw
        @stage.draw
        @sprites.each { |s| s.draw }
    end

    def button_down(id)
        if id == Gosu::KbEscape
            close
        end
    end
end

window = Itchy.new
window.show
