require 'scrit'

game = Itchy.new
#sprite = Sprite.new
game.sprites["ball"] = Sprite.new(game)
game.sprites["ball"].switch_costume_to('costume1')
game.green_flag
