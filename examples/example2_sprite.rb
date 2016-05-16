require 'scrit'

game = Itchy.new
game.sprites["cat"] = Sprite.new(:costumes => ['costume1', 'costume2'])
game.sprites["cat"].switch_costume_to('costume1')
game.green_flag
