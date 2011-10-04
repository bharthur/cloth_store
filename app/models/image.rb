# == Schema Information
#
# Table name: images
#
#  id                 :integer         not null, primary key
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  product_id         :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Image < ActiveRecord::Base

	belongs_to :product
	
	attr_protected :photo_file_name, :photo_file_size, :photo_content_type
	
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	validates_attachment_presence :photo
	
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
	
	validates_attachment_size :photo, :less_than => 5.megabytes

end
