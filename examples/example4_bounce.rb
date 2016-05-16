require 'scrit'

class Ball < Sprite
  def init
    @costumes = ['beachball']
    @speed = 5
    @x_vel = @speed
    @y_vel = @speed
  end
  
  def script
    @x += @x_vel
    if touching_left
      @x_vel = @speed
    elsif touching_right
      @x_vel = -@speed
    end
    
    @y += @y_vel
    if touching_bottom
      @y_vel = @speed
    elsif touching_top
      @y_vel = -@speed
    end
  end
end

game = Itchy.new
game.stage.switch_backdrop_to("xy-grid")
game.sprites["ball"] = Ball.new()
game.green_flag
