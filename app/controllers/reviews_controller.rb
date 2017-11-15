class ReviewsController < ApplicationController 
	before_action :authenticate_user!

	def create
		@review = @reviewable.reviews.new review_params
		@review.user_id = current_user
		@review.save 
		redirect_to @reviewable, notice: "Your review was posted! Thanks for contributing!"
	end

	private 

	  def review_params
	  	params.require(:review).permit(:body)
	  end
end
