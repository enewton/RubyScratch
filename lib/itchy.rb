require 'gosu'
require 'itchy/sprite'
require 'itchy/stage'

class Cloud < Sprite
    
    def init
        @name = "Cloud"
        @costume = "bigbluecloud"
        @y = 240
    end
    
    def update
        @x += 1
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
end

window = Itchy.new
window.show
