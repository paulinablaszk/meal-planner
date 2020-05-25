class Api::V1::TagsController < ApplicationController
   
        # GET /tags
        def index
          @tags = Recipes.all
          render json: @tags
      end
    
      # GET /tags/:id  
      def show
          @tag = Tag.find(params[:id])
          render json: @tag
      end
    
      # POST /tags
      def create
          @tag = Tag.new(tag_params)
          if @tag.save
              render json: @tag
          else
              render json: {error: 'Unable to create Tag'}, status: 400
          end
      end
    
      # PUT /tags/:id
      def update
          @tag = Tag.find(params[:id])
          if @tag
              @tag.update(tag_params)
              render json: { message: 'Tag successfully updated' }, status: 200
          else
              render json: {error: 'Unable to update Tag' }, status: 400
          end
      end
    
       # DELETE /tags/:id
       def destroy
          @tag = Tag.find(params[:id])
          if @tag
              @tag.destroy
              render json: { message: 'Tag successfully deleted' }, status: 200
          else
              render json: {error: 'Unable to delete Tag' }, status: 400
          end
      end
    
    
      private
      def tag_params
          params.require(:tag).permit(:title, :prep_time, :servings, :instructions, )
      end
    

    
end
