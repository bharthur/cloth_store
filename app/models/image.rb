# == Schema Information
#
# Table name: images
#
#  id                 :integer         not null, primary key
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_size         :integer
#  product_id         :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Image < ActiveRecord::Base

	attr_accessible :photo_file_name, :photo_content_type, :photo_size

	belongs_to :product
	
	validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
	
	


end
