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

require 'spec_helper'

describe Product do
  
  it {should belong_to(:category)}
  
  it {should have_many(:sizes)}
  
  it {should have_many(:images)}
   
  it { should have_and_belong_to_many(:occasions) }
  
  it { should validate_presence_of(:name) }
  
  it { should ensure_length_of(:name) }
  
  it { should validate_presence_of(:desc) }
  
  it { should ensure_length_of(:desc) }
  
  it { should validate_presence_of(:price) }
  
  it { should validate_numericality_of(:price) }
  
  it { should validate_presence_of(:is_special) }
  
  it { should ensure_length_of(:is_special) } 
  
end
