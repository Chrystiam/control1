class Supplier < ActiveRecord::Base
  belongs_to :city	
  belongs_to :doc
  attr_accessible :name, :adress, :cell, :city_id, :doc_id, :identification, :ocupation, :phone, :responsible, :social_reason
end
