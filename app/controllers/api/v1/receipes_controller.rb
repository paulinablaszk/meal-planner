class Api::V1::ReceipesController < ApplicationController
    def index
        render json: Receipes.all
      end
end
