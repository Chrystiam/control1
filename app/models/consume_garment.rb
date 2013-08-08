class ConsumeGarment < ActiveRecord::Base

    belongs_to :input
    belongs_to :unity
    belongs_to :garment
    attr_accessible :cost, :quantity_consume, :unity_id, :input_id, :garment_id
    
end
