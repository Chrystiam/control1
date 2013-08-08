class Production < ActiveRecord::Base
  
  belongs_to :garment
  belongs_to :user
  attr_accessible :month, :a_amount, :amount_in, :amount_out, :b_amount, :date_in, :date_out, :garment_id, :preparation_days, :remaining, :user_id
  
  def self.cut(fecha)
    str = fecha.split("-");
    @string = str[1]
  end

  
end
