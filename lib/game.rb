require "pry"

class Game #< HumanPlayer

  attr_accessor :human_player, :enemies

  def initialize (human_player)
       #@human_player = human_player
       @human_player = HumanPlayer.new(human_player)
       @enemies = []
       for i in 1..4
       	#@enemies << "player#{i}"
       	@enemies << Player.new("player#{i}")
         end 	   
  end

  def kill_player(enemies)
       @enemies.delete_at(@enemies.index(enemies))
       puts @enemies
  end

  def is_still_ongoing?
  	if @enemies.length != 0 && human_player.life_points != 0

  		return true
  	else
  		return false
  	end
  end

  def show_players
  	
  end

end


#binding.pry 
#puts "end of file"