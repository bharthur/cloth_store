# == Schema Information
#
# Table name: sizes
#
#  id         :integer         not null, primary key
#  size       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  product_id :integer
#

require 'test_helper'

class SizeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
