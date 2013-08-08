class Garment < ActiveRecord::Base

  	belongs_to :type
  	has_many   :consume_garments
  	attr_accessible :stock_price, :stock, :store, :code, :gender, :name, :reference, :type_id

    validates :name, :presence => true
    validates :reference, :presence => true
    validates :type_id, :presence => true
    validates :gender, :presence => true

     # busqueda
    def self.search(name)
        where('upper(name) like ?', "%#{name}%".upcase)
    end

end
