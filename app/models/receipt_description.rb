class ReceiptDescription < ActiveRecord::Base
  belongs_to :garment
  belongs_to :receipt_header	
  attr_accessible :amount, :garment_id, :total_value, :unity_value

end
