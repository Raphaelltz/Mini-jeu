require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


class App < Player #On soumet App a Player. 

#définit les joueurs
	player1 = Player.new("Josiane")
	player2 = Player.new("José")

#introduction
	puts "Bienvenue"
	puts "Voici nos deux joueurs:"
	puts "D'un côté, #{player1.show_state} ."
	puts "De l'autre, #{player2.show_state} ."

#combat
	puts "Passons à la phase d'attaque!"


#mise en place d'attaque successives pr le combat --> si <0, défaite. 
	while player1.life_points > 0 && player2.life_points >0
		puts player1.attacks(player2)
			break if player2.life_points <= 0
		player2.attacks(player1)
	end
end




