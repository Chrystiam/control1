class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :name_short        
      t.references :region

      t.timestamps
    end
    add_index :cities, :region_id
  end
end
