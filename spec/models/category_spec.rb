# == Schema Information
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'


describe Category do
  
  it { should have_many(:products) }
  
  it { should validate_presence_of(:name) }

end
