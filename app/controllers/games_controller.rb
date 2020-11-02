class GamesController < ApplicationController
    def index
    end


    def show
        @game = Game.find_by(id: params[:id])
    end
end