require 'gosu'
require 'scrit/sprite'
require 'scrit/stage'

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
        @costumes = ["PurpleFish1", "PurpleFish2"]
        @sounds = ["meow"]
        set_x_to 0
        set_y_to 0
        set_size_to_percent 0.1
    end
    
    def scripts
    end
end

class Itchy < Gosu::Window
    
    def initialize
        super 480, 360, false
        self.caption = "Scrit (Scratch in Ruby)"
    
        @stage = Stage.new(self)
        @sprites = []#[Cloud.new(self), Fish.new(self)]
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
    
    def stage
        @stage
    end
end