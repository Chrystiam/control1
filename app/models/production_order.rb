class ProductionOrder < ActiveRecord::Base
  
  has_many :preproduction_costs
  has_many :procedures
  belongs_to :garment
  belongs_to :client
  attr_accessible :client_id, :garment_id, :op, :programed_amount, :programing_date
end
