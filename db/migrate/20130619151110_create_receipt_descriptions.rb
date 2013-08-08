class CreateReceiptDescriptions < ActiveRecord::Migration
  def change
    create_table :receipt_descriptions do |t|
      t.integer :amount
      t.integer :garment_id
      t.integer :receipt_header_id
      t.float :unity_value
      t.float :total_value

      t.timestamps
    end
  end
end
