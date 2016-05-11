require 'gosu'
require "scrit/version"
require 'scrit/sprite'
require 'scrit/stage'

class Itchy < Gosu::Window
    
    def initialize
        super 480, 360, false
        self.caption = "Scrit (Scratch in Ruby)"
    
        @stage = Stage.new(self)
        @sprites = []#[Cloud.new(self), Fish.new(self)]
    end

    def green_flag
        show
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
