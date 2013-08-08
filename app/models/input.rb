class Input < ActiveRecord::Base

	  belongs_to :category
	  belongs_to :unity
	  attr_accessible :description, :meter_cost, :name, :total_cost
	  attr_accessible :unit_cost, :unity_id, :category_id
	  
	  # busqueda, ummmmm. me saco canas
   def self.search(name, categoria)       
       if categoria == "0" or categoria.nil? or categoria.empty? or categoria[0] == "0"
          where('upper(name) like ?', "%#{name}%".upcase) 
       elsif categoria != '0' and (!name.nil? or !name.empty?)
          where('upper(name) like ? and category_id = ?', "%#{name}%".upcase, categoria) 
       elsif categoria != '0' and (name.nil? or name.empty?)
          where('category_id = ?', categoria) 
       else
          scope :all
       end
   end
     
end
