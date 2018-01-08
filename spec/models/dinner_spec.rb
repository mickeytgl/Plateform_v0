require 'rails_helper'

RSpec.describe Dinner, type: :model do

  let(:dinner) { Dinner.new(
    :address => "New York, NY",
    :time => "2018-11-11 16:00:00",
    :description => "This is a test dinner",
    :cost => 5,
    :user => test_user,
  )}

  let(:test_user) { User.new }
  
  describe 'Validations' do
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:cost) }
    it { should validate_presence_of(:time) } 
    it { should validate_presence_of(:currency) } 

    it "is valid with all the correct parameters" do 
      expect(dinner).to be_valid
    end

    it "is not valid with a time in the past" do 
      dinner.time = "2015-11-11 16:00:00"
      dinner.save
      expect(dinner.errors[:time].first).to eq("You have to set a time in the future!")
      expect(dinner).not_to be_valid
    end

    it "defaults to USD when no currency is provided" do 
      expect(dinner.currency).to eq("USD")
    end
  end

  describe 'Associations' do 
    it { should belong_to(:user) }
    it { should have_many(:reviews) }
    it { should have_many(:categories) }
  end

  
end
