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

require 'spec_helper'

describe Size do
  
  it {should belong_to(:product)}
  
  it {should validate_presence_of(:size)}
  
  it {should ensure_length_of(:size)}
  
end
