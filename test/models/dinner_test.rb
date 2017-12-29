require 'test_helper'

class DinnerTest < ActiveSupport::TestCase
  test "should be invalid without an address" do 
  	dinners(:one).address = nil 
  	assert_nil dinners(:one).address
  	assert_equal false, dinners(:one).valid?
  end

  test "should take place in the future" do 
  	dinners(:one).time = 1.hour.ago 
  	assert_equal true, dinners(:one).time < Time.zone.now
  	assert_equal false, dinners(:one).valid?
  end


end
