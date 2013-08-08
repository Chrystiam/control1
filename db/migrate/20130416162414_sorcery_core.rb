class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :crypted_password
      t.string :salt           
      t.string :phone
      t.string :mobile
      t.string :ip
      t.string :location
      t.string :center_name
      t.integer :center_id
      t.integer :occupation_id
      t.date :remember_me_token_expires_at
      t.string :remember_me_token
      t.string :activation_state
      t.string :activation_token
      t.date :activation_token_expires_at
      t.date :reset_password_email_sent_at
      t.string :reset_password_token
      t.date :reset_password_token_expires_at
      t.string :role

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end