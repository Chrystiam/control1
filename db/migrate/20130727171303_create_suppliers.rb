class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.integer :doc_id
      t.string :identification
      t.string :social_reason
      t.string :responsible
      t.string :ocupation
      t.string :adress
      t.string :phone
      t.string :cell
      t.integer :city_id

      t.timestamps
    end
  end
end
