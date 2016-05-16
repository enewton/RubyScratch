require 'scrit'

class Scratchy < Sprite
  def init
    @costumes = ['costume1', 'costume2']
  end
  
  def script
    turn_left(1)
  end
end

game = Itchy.new
game.sprites["cat"] = Scratchy.new()
game.green_flag
