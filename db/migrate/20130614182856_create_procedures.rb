class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :embroidery_delivery
      t.string :embroidery_real
      t.string :embroidery_end
      t.string :embroidery_attendant
      t.string :print_delivery
      t.string :print_real
      t.string :print_end
      t.string :print_attendant
      t.string :cutting_delivery
      t.string :cutting_real
      t.string :cutting_end
      t.string :cutting_attendant
      t.string :outline_delivery
      t.string :outline_real
      t.string :outline_end
      t.string :outline_attendant
      t.string :assembly_delivery
      t.string :assembly_real
      t.string :assembly_end
      t.string :assembly_attendant
      t.string :washing_delivery
      t.string :washing_real
      t.string :washing_end
      t.string :washing_attendant
      t.string :tinte_delivery
      t.string :tinte_real
      t.string :tinte_end
      t.string :tinte_attendant
      t.string :labeled_delivery
      t.string :labeled_real
      t.string :labeled_end
      t.string :labeled_attendant
      t.string :stock_delivery
      t.string :stock_real
      t.string :stock_end
      t.string :stock_attendant
      t.string :store_delivery
      t.string :store_real
      t.string :store_end
      t.string :store_attendant
      t.integer :production_order_id
      t.integer :condition_id
      t.integer :embroidery_amount
      t.integer :print_amount
      t.integer :print_amount
      t.integer :cutting_amount
      t.integer :outline_amount
      t.integer :assembly_amount
      t.integer :washing_amount
      t.integer :tinte_amount
      t.integer :labeled_amount
      t.integer :stock_amount
      t.integer :store_amount
      t.integer :embroidery_month
      t.integer :print_month
      t.integer :print_month
      t.integer :cutting_month
      t.integer :outline_month
      t.integer :assembly_month
      t.integer :washing_month
      t.integer :tinte_month
      t.integer :labeled_month
      t.integer :stock_month
      t.integer :store_month
      
      t.timestamps
    end
  end
end
