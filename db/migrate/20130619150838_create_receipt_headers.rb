class CreateReceiptHeaders < ActiveRecord::Migration
  def change
    create_table :receipt_headers do |t|
      t.string :consecutive
      t.string :client
      t.string :adress
      t.integer :city_id
      t.string :identification
      t.string :phone
      t.integer :user_id

      t.timestamps
    end
  end
end
