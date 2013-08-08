class CreatePreproductionCosts < ActiveRecord::Migration
  def change
    create_table :preproduction_costs do |t|
      t.float :plotting
      t.float :perforated_paper
      t.float :plastic
      t.float :labeling
      t.float :printing
      t.float :cost
      t.integer :production_order_id

      t.timestamps
    end
  end
end
