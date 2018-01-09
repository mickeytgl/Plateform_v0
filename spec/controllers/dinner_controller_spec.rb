require 'rails_helper'

RSpec.describe DinnersController, type: :controller do

  let(:dinners) { Dinner.all }

  describe 'GET#index' do
    before(:example) { get :index }

    it 'is a success' do 
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do 
      expect(response).to render_template('index')
    end

    it "gets"
  end

  describe 'GET#show' do 
  end

  describe 'POST#create' do 
  end

end
