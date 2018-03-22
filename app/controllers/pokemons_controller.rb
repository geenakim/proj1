class PokemonsController < ApplicationController

	def index
		@pokemons = Pokemon.all
	end

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save

		redirect_to "/"
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		@pokemon.save
		if @pokemon.health <10
			if @pokemon.trainer_id == current_trainer.id
				@pokemon.health = 0
				@pokemon.save
			else
				@pokemon.destroy
			end
		end

		redirect_to trainer_path(id: @pokemon.trainer_id)
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.level = 1
		@pokemon.health = 100
		@pokemon.trainer_id = current_trainer.id

		if @pokemon.save
			redirect_to trainer_path(id: @pokemon.trainer_id)
		else
			redirect_to new_path
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end


	def heal
		@pokemon = Pokemon.find(params[:id])

		if @pokemon.health >= 90
			@pokemon.health = 100
		else
			@pokemon.health += 10
		end
		@pokemon.save
		redirect_to trainer_path(id: @pokemon.trainer_id)
	end

	
	def pokemon_params
		params.require(:pokemon).permit(:name, :ndex)
	end


end
