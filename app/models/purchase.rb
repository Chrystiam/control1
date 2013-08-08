class Purchase < ActiveRecord::Base
  belongs_to :supplier
  has_many :purchase_descriptions
  attr_accessible :date, :supplier_id
end
