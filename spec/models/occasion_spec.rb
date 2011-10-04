# == Schema Information
#
# Table name: occasions
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Occasion do
  
  it { should validate_presence_of(:name) }
  
  it { should ensure_length_of(:name) }
  
  it { should have_and_belong_to_many(:products)}
  
end
