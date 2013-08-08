class PreproductionCost < ActiveRecord::Base
  belongs_to :production_order
  attr_accessible :cost, :labeling, :perforated_paper, :plastic, :plotting, :printing, :production_order_id
end
