class DinnersController < ApplicationController
	before_action :set_dinner, only: [:show, :edit, :update, :destroy]

	#GET /dinners 
	def index 
		@dinners = Dinner.all 
	end 

	#GET /dinners/1
	def show 
	end

	#GET /dinners/new
	def new 
		@dinner = Dinner.new 
	end 

	#GET /dinners/1/edit
	def edit
	end


	#POST /dinners
	def create
		@dinner = Dinner.new(dinner_params)

		if @dinner.save 
			redirect_to @dinner, notice: 'Yay! Your dinner was successfully created'
		else
			redirect_to new_dinner_path, alert: 'Damn, something went wrong'
		end 
	end

	# PATCH/PUT /dinners/1
	def update
		if @dinner.update(dinner_params)
			redirect_to @dinner, notice: "Your dinner was successfully updated"
		else
			render :edit, alert: "Whoops, try again"
		end
	end

	#DELETE /dinners/1 
	def destroy 
		@dinner.destroy 
		redirect_to dinners_url, notice: "Dinner was successfully destroyed"
	end 

	private 

		def set_dinner
			@dinner = Dinne.find(params[:id])
		end

		def dinner_params 
			params.require(:dinner).permit(:place, :time, :description, :cost)
		end
end
