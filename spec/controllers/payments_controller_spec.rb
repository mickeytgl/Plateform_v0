require 'rails_helper'

RSpec.describe Dinners::PaymentsController, type: :controller do
  describe 'POST create' do 
    it 'sets correctly the @dinner value' do 
      let
    end

    it 'charges the amount of @dinner.cost'

    it 'creates a guest in the database'

    it 'updates the @dinner.guest count and substracts one'

    it 'does not allow a payment if @dinner.guest equals zero'

    it 'allows a payment if the with valid inputs'
  end


end
 