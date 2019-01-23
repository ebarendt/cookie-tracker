require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "valid order" do
    refute build(:order, girl_name: nil).valid?
    assert build(:order, girl_name: "Susie").valid?
  end

  test "total cookies" do
    assert_equal 2, build(:order, thin_mints: 1, samoas: 1).total
  end
end
