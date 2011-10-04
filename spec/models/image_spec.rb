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

require 'spec_helper'


describe Image do
  
  it { should belong_to(:product)}
  
  it { should have_attached_file(:photo) }
  
  it { should validate_attachment_presence(:photo) }
  
  it { should validate_attachment_content_type(:photo).allowing('image/png', 'image/jpeg')}
                  
  it { should validate_attachment_size(:photo).less_than(5.megabytes) }

end
