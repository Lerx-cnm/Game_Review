class GamesController < ApplicationController
    def index
        # binding.pry
        @games = Game.all
    end


    def show
        @game = Game.find_by(id: params[:id])
        # @reviews = Review.find_by(game_id: params[:id])
    #   binding.pry  
    end


    private 

end