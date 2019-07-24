# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
#require 'pry'
Bundler.require


# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/game'
require_relative 'lib/player'

# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.
#binding.pry
require 'bundler'

player1 = Player.new("Josiane")
player2 = Player.new("José")



while  player1.life_points > 0 && player2.life_points >0 

	puts "==============================="
	puts "Voici l'état de chaque joueur"
	puts player1.show_state 
	puts player2.show_state
	puts "==============================="

	puts "Are you ready \n Lets go !!!"
	puts " FIGHT !!!!"
	puts player2.attacks(player1)
	

	puts "==============================="
	puts "Riposte de #{player1.name}"
	puts  player1.attacks(player2)
	puts "==============================="
	
    
    if player1.life_points == 0 || player2.life_points == 0 
    	break 
    end
  
end
#binding.pry