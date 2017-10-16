module Api 
  module V1 
    class PizzasController < ApplicationController

      def index
        @pizzas = Pizza.order('created_at DESC')
      end

      def create
        @pizza = Pizza.new(pizza_params)
        if @pizza.save
          render json: {status: :created}
        else
          render json: @pizza.errors
        end
      end

      def upvote
        @pizza = Pizza.find(params[:pizza_id])
        @pizza.votes.create
        render json: {status: :created}
      end

      def destroy
        @pizza = Pizza.find_by(params[:id])
        if @pizza
          @pizza.destroy
        else
          render json: {post: "not found"}
        end
      end

      def update
        @pizza = Pizza.find_by(params[:id])
        if @pizza.update(pizza_params)
          render json: {status: :updated}
        else
          render json: @pizza.errors
        end
      end
      
      private
      
      def pizza_params
        params.require(:pizza).permit(:name, :ingredients, :image_url)
      end
    end 
  end
end


