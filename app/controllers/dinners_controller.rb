class DinnersController < ApplicationController
	before_action :set_dinner, only: [:show, :edit, :update, :destroy]
	before_action :require_user, except: [:show, :index]
	before_action :require_same_user, only: [:edit, :update]

	#GET /dinners 
	def index 
	  @dinners = if params[:l]
	  	           sw_lat, sw_lng, ne_lat, ne_lng = params[:l].split(",")
	  	           center   = Geocoder::Calculations.geographic_center([[sw_lat, sw_lng], [ne_lat, ne_lng]])
	  	           distance = Geocoder::Calculations.distance_between(center, [sw_lat, sw_lng])
	  	           box      = Geocoder::Calculations.bounding_box(center, distance)
	  	           Dinner.within_bounding_box(box)
	  	         elsif params[:near]
	  	           Dinner.near(params[:near])
	  	         else 
	  	           Dinner.all
	  	         end

	  @dinners = Dinner.page(params[:page]).per(5)
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
		@dinner.user_id = current_user.id

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
			@dinner = Dinner.find(params[:id])
		end

		def require_same_user 
			if current_user != @dinner.user and !current_user.admin?
				flash[:danger] = "You can only modify your own dinners"
				redirect_to root_path
			end
		end

		def dinner_params 
			params.require(:dinner).permit(:place, :time, :description, :cost, :address, {images: []}, :category_id)
		end
end
