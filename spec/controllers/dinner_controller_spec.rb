require 'rails_helper'

RSpec.describe DinnersController, type: :controller do

  let(:dinners) { Dinner.all }
  let(:dinner) { Dinner.new(
    'address' => "New York, NY",
    'time' => "2018-11-11 16:00:00",
    'description' => "This is a test dinner",
    'cost' => 5,
    'user' => test_user,

  )}
  let(:current_user) { User.new }


  describe 'GET#index' do
    before(:example) { get :index }

    it 'is a success' do 
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do 
      expect(response).to render_template('index')
    end

    it "sets @dinners properly if given the :l param" 

    it "sets @dinners properly if given the :near param"

    it "sets @dinners to Dinner.all if no param is given"
  end

  describe 'GET#show' do 
  end

  describe 'GET#edit' do
  end

  describe 'POST#create' do 
  end

  describe 'PATCH/PUT#update' do 
  end

  describe 'DELETE#destroy' do 
  end 

  describe 'PUT#guest' do
    before(:example) { dinner.total_guests = 5 }

    it 'lowers guest count by one when it is successfull'

    it 'is successfull if no other guest record exists'

    it 'fails if there is already a guest record'

    it 'it redirects to payment??? or back to the show page???'
  end

end
