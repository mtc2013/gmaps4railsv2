class AddLatAndLongToMappable < ActiveRecord::Migration
  def change
    add_column :mappables, :latitude, :float
    add_column :mappables, :longitude, :float
  end
end
