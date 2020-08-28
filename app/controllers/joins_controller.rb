class JoinsController < ApplicationController
    def index 
        @joins = Join.all
        render json: @joins, include:[:trainer, :pokemon]
    end

    def show 
        @join = Join.find(params[:id])
        render json: @join, include:[:trainer, :pokemon]
    end

    def create
        @join = Join.create(
            pokemon_id: params[:pokemon_id], 
            trainer_id: params[:trainer_id]
        )
        render json: @join
    end
    
    def update 
        @join = Join.find(params[:id])
        @join.update(
            pokemon_id: params[:pokemon_id],
            trainer_id: params[:trainer_id]
        )
        render json: @join
    end

    def destroy
        @join = Join.find(params[:id])
        @join.destroy

        render json: "Join has been deleted"
    end
end
