class CreateRegionals < ActiveRecord::Migration
  def change
    create_table :regionals do |t|
      t.string :name
      t.string :director
      t.string :phone
      t.string :ip

      t.timestamps
    end
  end
end