class CreateGarments < ActiveRecord::Migration
  def change
    create_table :garments do |t|
      t.string :name
      t.string :reference
      t.string :code
      t.string :gender
      t.integer :stock
      t.integer :store
      t.float :stock_price
      t.references :type

      t.timestamps
    end
    add_index :garments, :type_id
  end
end