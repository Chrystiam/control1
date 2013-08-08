class City < ActiveRecord::Base

	  belongs_to :region
	  attr_accessible :name, :region_id
  
  def self.nombre(city)
    @nombre = "#{city.name}, #{city.region.name} - #{city.region.country.name}"
    return @nombre
  end

end
