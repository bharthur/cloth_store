class Occasion < ActiveRecord::Base

	attr_accessible :name

	has_and_belongs_to_many :products, :join_table => :occasions_products

	
	validates :name, :presence => true,
									 :length => {:maximum => 20}

end
