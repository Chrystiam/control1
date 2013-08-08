class CreatePurchaseDescriptions < ActiveRecord::Migration
  def change
    create_table :purchase_descriptions do |t|
      t.integer :purchase_id
      t.integer :input_id
      t.integer :amount
      t.float :total_value

      t.timestamps
    end
  end
end
