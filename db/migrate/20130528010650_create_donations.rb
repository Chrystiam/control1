class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :user_id
      t.integer :garment_id
      t.integer :amount
      t.string :description
      t.string :date
      t.string :justification
      t.integer :receiver

      t.timestamps
    end
  end
end
