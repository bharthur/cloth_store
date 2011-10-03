class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_size
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
