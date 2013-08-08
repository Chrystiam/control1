class ReceiptHeader < ActiveRecord::Base
  attr_accessible :created_at, :consecutive, :user_id, :adress, :city_name, :client, :identification, :phone
  attr_accessible :city_name
  belongs_to :city
  belongs_to :user
  has_many :receipt_descriptions
  
  def city_name
    city.name if city
  end

  def city_name=(name)
    self.city = City.find_or_create_by_name(name) unless name.blank?
  end

  def self.cut(fecha)
    @str = fecha.to_s
    @str = @str.split("-");
    @dia = @str[2].split(" ")
    @str[2] = @dia[0]
    return @str
  end

end
