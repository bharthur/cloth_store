# == Schema Information
#
# Table name: products
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  desc        :text
#  price       :integer
#  is_special  :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  category_id :integer
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
