class CreateMappables < ActiveRecord::Migration
  def change
    create_table :mappables do |t|
      t.string :address

      t.timestamps
    end
  end
end
