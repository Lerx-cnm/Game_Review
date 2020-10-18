class GamesController < ApplicationController
    def index
        binding.pry
        @games = Game.all
    end

    def new
      @game = Game.new
    end


    private 

    def games_params
        params
    end
end