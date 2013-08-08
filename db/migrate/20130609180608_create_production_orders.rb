class CreateProductionOrders < ActiveRecord::Migration
  def change
    create_table :production_orders do |t|
      t.string :programing_date
      t.integer :client_id
      t.integer :op
      t.integer :garment_id
      t.integer :programed_amount

      t.timestamps
    end
  end
end
