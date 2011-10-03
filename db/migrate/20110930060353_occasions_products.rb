class OccasionsProducts < ActiveRecord::Migration
  def self.up
  	create_table 'occasions_products', :id => false do |t|
  	t.column :occasion_id, :integer
  	t.column :product_id, :integer
  	end
  end

  def self.down
  	drop_table :occasions_products
  end
end
