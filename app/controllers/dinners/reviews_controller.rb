class Dinners::ReviewsController < ReviewsController
  before_action :set_reviewable

  private 

    def set_reviewable 
    	@reviewable = Dinner.find(params[:dinner_id])
    end
end