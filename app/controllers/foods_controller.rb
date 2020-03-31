class FoodsController < InheritedResources::Base
  # skip_before_action :authenticate_user!

  def index
    @foods = Food.all
    @foods = Food.category(params[:category]) if params[:category]
    respond_to do |format|
      format.html 
      format.json { render json: @foods  }
    end
  end

    
    




  def create
  
  end

  def show
    @food = Food.includes(:recipes).find(params[:id])
    render json: @food, serializer: ::FoodSerializer
  end

  private

    def food_params
      params.require(:food).permit(:title, :description)
    end

end
