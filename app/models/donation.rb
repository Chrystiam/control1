class Donation < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :garment
  attr_accessible :amount, :date, :description, :garment_id, :justification, :receiver, :user_id
end
