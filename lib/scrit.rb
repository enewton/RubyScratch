require 'gosu'
require "scrit/version"
require 'scrit/sprite'
require 'scrit/stage'

class Itchy < Gosu::Window
    
    def initialize
        super 480, 360, false
        self.caption = "Scrit (Scratch in Ruby)"
    
        @stage = Stage.new(self)
        @sprites = Hash.new
    end

    def green_flag
        show
    end
        
    def sprites
        @sprites
    end
        
    def update
        @stage.script
        sprites.each do |name, sprite|
            sprite.script
        end
    end

    def draw
        @stage.draw
        sprites.each do |name, sprite|
            sprite.draw
        end
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
