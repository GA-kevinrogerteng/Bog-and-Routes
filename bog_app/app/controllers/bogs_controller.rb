class BogsController < ApplicationController

	def index 
	end

	def new
		render :new
	end

	def create
		creature = params.require(:creature).permit(:name, :description)
		new_creature = Creature.create(creature)
		redirect_to "/bogs/#{new_creature.id}"
	end

	def show
		id = params[:id]
		@creature = Creature.find(id)
		render :show
	end

	def show_all
		@creatures = Creature.all
		render :show_all
	end

	def edit
		id = params[:id]
		@creature = Creature.find(id)
		render :edit
	end

	def update
		id = params[:id]
		creature = Creature.find(id)
		updated_creature = params.require(:creature).permit(:name, :description)
		creature.update_attributes(updated_creature)
		redirect_to "/bogs/#{creature.id}"
	end

	def delete
		id = params[:id]
		creature = Creature.find(id)
		creature.destroy
		redirect_to "/bogs/show_all"
	end


end