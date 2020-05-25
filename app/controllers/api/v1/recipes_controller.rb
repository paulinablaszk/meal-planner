class Api::V1::RecipesController < ApplicationController
  
    # GET /recipes
    def index
      @recipes = Recipes.all
      render json: @recipes
  end

  # GET /recipes/:id  
  def show
      @recipe = Recipe.find(params[:id])
      render json: @recipe
  end

  # POST /recipes
  def create
      @recipe = Recipe.new(recipe_params)
      if @recipe.save
          render json: @recipe
      else
          render json: {error: 'Unable to create Recipe'}, status: 400
      end
  end

  # PUT /recipes/:id
  def update
      @recipe = Recipe.find(params[:id])
      if @recipe
          @recipe.update(recipe_params)
          render json: { message: 'Recipe successfully updated' }, status: 200
      else
          render json: {error: 'Unable to update Recipe' }, status: 400
      end
  end

   # DELETE /recipes/:id
   def destroy
      @recipe = Recipe.find(params[:id])
      if @recipe
          @recipe.destroy
          render json: { message: 'Recipe successfully deleted' }, status: 200
      else
          render json: {error: 'Unable to delete Recipe' }, status: 400
      end
  end


  private
  def recipe_params
      params.require(:recipe).permit(:title, :prep_time, :servings, :instructions, )
  end

end
