class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.integer :garment_id
      t.string :date_in
      t.integer :amount_in
      t.string :date_out
      t.integer :amount_out
      t.integer :remaining
      t.integer :a_amount
      t.integer :b_amount
      t.integer :user_id
      t.integer :preparation_days
      t.integer :month
      
      t.timestamps
    end
  end
end
