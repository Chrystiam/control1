class AddAttachmentImageToConditions < ActiveRecord::Migration
  def self.up
    change_table :conditions do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :conditions, :image
  end
end
