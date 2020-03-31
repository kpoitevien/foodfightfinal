class RecipesController < InheritedResources::Base
  def new
  end
  def index
    @recipes = Recipe.all
    @recipes = Recipe.by_category(params[:category]) if params[:category]
    @recipes = Recipe.by_ingredient(params[:ingredient]) if params[:ingredient]
    respond_to do |format|
      format.html 
      format.json { render json: @recipes  }
    end
  end

  def show
    @recipes = Recipe.find(params[:id])
  
  end

#   def index
#     @recipes = Recipe.all
#     case params[:category]
#     when 
#      @recipes = Recipe.where("foods.title = #{:category} ")
#     end
#   end
# end
  
  def create

  end

  private

  def authenticate

  end


  def recipe_params
    params.require(:recipe).permit(:food_name, :ingredients, :recipe, :cook_time, :carbs, :calories, :sugars, :fat, :protein, :cholesterol, :sodium, :image, :new_food_id)
  end
end
