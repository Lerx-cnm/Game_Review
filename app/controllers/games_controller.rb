class GamesController < ApplicationController
    def index
        binding.pry
        @games = Game.all
    end

    def new
      @game = Game.new
    end

    def create
        @game = Game.new(game_params)
        if @game.valid?
          @game.save  

          redirect_to game_path(@game)
        else 
            render :new
        end
    end


    private 

    def game_params
        params.require(:game).permit(:title, :genre)
    end
end