class Size < ActiveRecord::Base

attr_accessible :size

belongs_to :product

validates :size, :presence => true,
									 :length => {:maximum => 4}	



end
