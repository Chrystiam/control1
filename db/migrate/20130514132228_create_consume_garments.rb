class CreateConsumeGarments < ActiveRecord::Migration
  def change
    create_table :consume_garments do |t|
      t.references :input
      t.references :unity
      t.float :cost
      t.float :quantity_consume
      t.references :garment

      t.timestamps
    end
    add_index :consume_garments, :input_id
    add_index :consume_garments, :unity_id
    add_index :consume_garments, :garment_id
  end
end
