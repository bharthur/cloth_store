class FixColumnName < ActiveRecord::Migration
  def self.up
  rename_column :images, :photo_size, :photo_file_size
  end

  def self.down
  end
end
