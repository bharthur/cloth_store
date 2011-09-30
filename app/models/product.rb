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

class Product < ActiveRecord::Base

	attr_accessible :name, :desc, :price, :is_special
	
	belongs_to :category
	
	has_and_belongs_to_many :occasions, :join_table => :occasions_products
	
	has_many :sizes
	
	has_many :images
	
	validates :name, :presence => true,
										:length => {:maximum => 50}
										
	validates :desc, :presence => true,
									 :length => {:maximum => 200}
									 
	validates :price, :presence => true,
										:numericality => true
										
	validates :is_special, :presence => true
	
end
