require "pry"

class Player 
	attr_accessor :name, :life_points


	def initialize(name)
		@name = name.to_s
		@life_points = 10
	end 


	def show_state #Affichage des points de vie
	 	puts "#{@name} a #{life_points} points de vie. " 
	end


	def gets_damage(damage) #calcule des dommages + si en dessous de 0 --> mort
		@life_points = @life_points - damage
		if @life_points <= 0
			puts "Le joueur #{@name} est mort. "
		end
	end


	def attacks(player_attacked) #Attaque du joueur x sur le joueur y avec l'attaque qu'on définit ensuite. 
		puts "Le joueur #{@name} attaque le joueur #{player_attacked.name}. "
		damage_received = compute_damage
		puts "Il a subi #{damage_received} dégat(s)."
		player_attacked.gets_damage(damage_received)
	end 
	 

	def compute_damage #Calcule aléatoire des dommages
		return rand(1..6)
	end 
end 

 

