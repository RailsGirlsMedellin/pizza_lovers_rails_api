module Api 
	module V1 
		class PizzasController < ApplicationController
			def index
				@pizzas = Pizza.order('created_at DESC')
				render json: @pizzas
			end
			def create
				@pizza = Pizza.new(pizza_params)
				if @pizza.save
					render status: :created
				else
					render json: @pizza.errors, status: :unprocessable_entity
				end
			end
			
			private
			
			def pizza_params
				params.require(:pizza).permit(:name, :ingredients)
			end
		end 
	end
end

