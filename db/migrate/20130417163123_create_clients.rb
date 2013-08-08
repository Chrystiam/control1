class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :identification
      t.string :name
      t.string :attendant
      t.string :mail
      t.string :phone
      t.string :cell
      t.references :city
      t.references :doc

      t.timestamps
    end
    add_index :clients, :city_id
    add_index :clients, :doc_id
  end
end
