class PurchaseDescription < ActiveRecord::Base
  belongs_to :input	
  belongs_to :purchase
  attr_accessible :amount, :input_id, :purchase_id, :total_value
end
