require 'rails_helper'



RSpec.describe Dinner, type: :model do

  subject { Dinner.new(
    'address' => "New York, NY",
    'time' => "2018-11-11 16:00:00",
    'description' => "This is a test dinner",
    'cost' => 5,
    'user' => test_user,
  )}

  let(:test_user) { User.new }
  
  describe 'Validations' do
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:cost) }
    it { should validate_presence_of(:time) } 
    it { should validate_presence_of(:currency) } 

    it "is valid with all the correct parameters" do 
      expect(subject).to be_valid
    end

    it "is not valid with a time in the past" do 
      subject.time = "2015-11-11 16:00:00"
      subject.save
      expect(subject.errors[:time].first).to eq("You have to set a time in the future!")
      expect(subject).not_to be_valid
    end

    it "defaults to USD when no currency is provided" do 
      expect(subject.currency).to eq("USD")
    end
  end

  describe 'Associations' do  
    it { should belong_to(:user) }
    it { should have_many(:reviews) }
    it { should have_many(:categories) }
  end

  describe 'Geocoder' do
    it 'should assign lat and long after validation' do 
      subject.geocode
      subject.save 
      expect(subject).to be_valid
      expect(subject.latitude).to be_between(40, 41)
      expect(subject.longitude.abs).to be_between(73, 75)
    end
  end
  
end
