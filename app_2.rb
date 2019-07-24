
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "$-----Bienvenue dans last days of world----$"
puts "$----Tu survivra si tu tue tout le monde---$"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

puts "Veuillez entrer votre nom" 
 player_name = gets.chomp

puts "Bienvenue à toi =====> #{player_name}"
   user = HumanPlayer.new(player_name)
   player1 = Player.new("Josiane")
   player2 = Player.new("José")

puts "Voici tes deux adversaires Josiane et José"
puts "Let's go  !!!!"
    
    #Player = player1, player2
while user.life_points > 0 && (player1.life_points > 0 || player2.life_points)

	puts "🏽🏽🏽🏽🏽🏽🏽🏽🏽🏽🏽🏽🏽🏽🏽🏽🏽🏽🏽"
	puts "A 👉 Quelle action veux-tu effectuer ?"
	puts "a = chercher une meilleure arme"
	puts "s = chercher à se soigner "

        action = gets.chomp
        if action == "a"
        	puts  user.search_weapon  
        end
        if action == "s"
        	puts  user.search_health_pack 
        end
		    puts "===============================🤜🤜🤜🤜🤜🤜"    
			puts "B 👉 attaquer un joueur en vue :"
			puts "0 = Josiane a #{player1.life_points} points de vie"
			puts "1 = José a #{player2.life_points} points de vie"

	    attack = gets.chomp.to_i
        if attack == 0
        	puts user.attacks(player1)
        end
        if attack == 1
        	puts user.attacks(player2)
        end

    puts "🤛🤛🤛🤛🤛🤛==============================="   
    puts "C 👉Tes énemis attaquent ATTENTION "
      enmis = [player1, player2]
        enmis.each do |i|
        	 next if i.life_points <= 0 
        	  puts i.attacks(user)

        end
	puts  user.show_state

	    if player1.life_points <= 0
			    #puts  "#{player1.name } est mort"
			    puts  player2.show_state
        elsif player2.life_points <= 0
                #puts  "#{player2.name } est mort"    	
                puts  player1.show_state			    
	    else	         			    
        end

            if (player1.life_points <= 0 && player2.life_points <= 0) || user.life_points == 0
               puts  "#{player1.name } est mort"  
               puts  "#{player2.name } est mort"  
    	       break 
            end  
end
    
    if user.life_points == 0 

        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "$👎👎👎👎       TU AS PERDU        👎👎👎👎$"
        puts "$          😖😖😖GAME OVER😖😖😖           $"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    else

    	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    	puts "👏👏👏👏👏        WIN !!!!        👏👏👏👏👏"
    	puts "💪💪💪           TU AS GAGNE          💪💪💪"
    	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end
