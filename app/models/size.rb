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

class Size < ActiveRecord::Base

	attr_accessible :size

	belongs_to :product

	validates :size, :presence => true,
									 :length => {:maximum => 4}	

end
