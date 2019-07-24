#require "pry"

class Player
	attr_accessor :name, :life_points 

	def initialize(name_player)
		@name = name_player
		@life_points = 10
	end

    def show_state
	
		puts "#{@name} a #{@life_points} points de vie "	
	end

    def gets_damage(damage_points)
		 @life_points -= damage_points
		if @life_points <= 0
			puts "le joueur #{@name} a été tué "
		end
	end

	def attacks(player)
	    a = compute_damage
		puts "le joueur #{name} attaque le joueur #{player.name}"
		player.gets_damage(a)
		puts "il lui inflige #{a} de dommages"
		
	end
	def compute_damage
		return rand(1..6)
	end
	
end

class HumanPlayer < Player
	attr_accessor :weapon_level

	def initialize(name_player)
		@weapon_level = 1 
        super (name_player)
        @life_points = 100
	end
    def search_weapon
    	a = rand(1..6)
    	if a > @weapon_level
    	    @weapon_level = a
    		puts "Youh!! l'arme trouvé est de niveau #{@weapon_level} cooool tu la prends!!"

    	else
    		puts "M@*#$.. what's fuck!! l'arme trouvé est de niveau #{@weapon_level}"
    	end
    end
    def search_health_pack
    	b = rand(1..6)

    	
        if b == 1
        	@life_points = b
        	puts "Tu n'as rien trouvé petit tête...Ta life est #{@life_points}"
        elsif (b > 2 && b < 5 ) || b == 2 || b == 5
        	@life_points += 50

        	if @life_points > 100
              @life_points = 100
            end
        	puts "Bravo, tu as trouvé un pack de +50 points de vie.Ta life est #{@life_points}"
        else
        	@life_points += 80
        	
        	if @life_points > 100
              @life_points = 100
            end
        	puts "Waow, tu as trouvé un pack de +80.Ta life est #{@life_points}"
        end
        
    end
    def show_state
	
		puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"	
	end
    def compute_damage
		return rand(1..6)*@weapon_level
	end
end
#binding.pry
#puts "end of file"