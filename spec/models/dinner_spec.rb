require 'rails_helper'



RSpec.describe Dinner, type: :model do

  subject { Dinner.new(
    'address' => "Paris, FR",
    'time' => "2018-11-11 16:00:00",
    'description' => "This is a test dinner",
    'cost' => 5,
    'user' => test_user,
    'currency' => "eur",
    'guest' => 10,
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

    it "defaults to eur when no currency is provided" do 
      expect(subject.currency).to eq("eur")
    end
  end

  describe 'Associations' do  
    it { should belong_to(:user) }
    it { should have_many(:reviews) }
    it { should have_many(:categories) }
  end

  describe.skip 'Geocoder' do
    it 'should assign lat and long after validation' do 
      subject.save 
      expect(subject.latitude).to be_between(40, 41)
      expect(subject.longitude.abs).to be_between(73, 75)
    end
  end

  describe 'Scopes' do
  it "returns an upcoming dinner" do
    future  = Dinner.create(address: "hey", description: "ho!", cost: 5, time: "3015-11-11 16:00:00", currency: "eur", user: test_user, guest: 5)
    future2 = Dinner.create(address: "hey2", description: "ho2!", cost: 5, time: "3016-11-11 16:00:00", currency: "eur", user: test_user, guest: 5)
    past    = Dinner.create(address: "hey", description: "ho!", cost: 5, time: "2015-11-11 16:00:00", currency: "eur", user: test_user, guest: 5)
    
    expect(Dinner.upcoming).to include(
      future,
      future2,
      )
  end

  it "does not return unpublished posts" do
    expect(Dinner.upcoming).to_not include(Dinner.where("time < Time.now"))
  end

end
  
end
