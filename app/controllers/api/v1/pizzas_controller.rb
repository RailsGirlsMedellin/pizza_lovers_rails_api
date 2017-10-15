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

      def destroy
        @pizza = @pizzas.find_by(params[:id])
        if @pizza
          @pizza.destroy
        else
          render json: {post: "not found"}, status: :not_found
        end
      end
      
      private
      
      def pizza_params
        params.require(:pizza).permit(:name, :ingredients)
      end
    end 
  end
end

