class CreateInputs < ActiveRecord::Migration
  def change
    create_table :inputs do |t|
      t.string :name
      t.string :description
      t.references :category
      t.float :unit_cost
      t.float :meter_cost
      t.float :total_cost
      t.references :unity

      t.timestamps
    end
    add_index :inputs, :category_id
    add_index :inputs, :unity_id
  end
end
