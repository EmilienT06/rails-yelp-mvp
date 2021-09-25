class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
	end
    
	def show
@restaurant = Restaurant.find(params[:id])
	end
    
	def new
		@restaurant = Restaurant.new
	end
    
	def create
		@restaurant = Task.new(task_params)
		@restaurant.save
		redirect_to restaurant_path(@restaurant)
	end
	
	private

	def task_params
 		params.require(:task).permit(:title, :details, :completed)
	end
end
