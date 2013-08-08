class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.string :name
      t.integer :regional_id
      t.boolean :status

      t.timestamps
    end
  end
end