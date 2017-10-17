module Api
  module V1
    class PizzasController < ApplicationController
      before_action :set_pizza, only: [ :update, :destroy ]

      def index
        @pizzas = Pizza.order('created_at DESC')
      end

      def create
        @pizza = Pizza.new(pizza_params)
        if @pizza.save
          render json: { status: :created }
        else
          render json: @pizza.errors
        end
      end

      def upvote
        @pizza = Pizza.find(params[:pizza_id])
        @pizza.votes.create
        render json: { status: :created }
      end

      def destroy
        if @pizza
          @pizza.destroy
        else
          render json: { post: "not found" }
        end
      end

      def update
        if @pizza.update(pizza_params)
          render json: { status: :updated }
        else
          render json: @pizza.errors, status: :unprocessable_entity
        end
      end

      private

        def set_pizza
          @pizza = Pizza.find(params[:id])
        end

        def pizza_params
          params.permit(:name, :ingredients, :image_url)
        end
    end
  end
end
