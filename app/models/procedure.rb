class Procedure < ActiveRecord::Base
	belongs_to :production_order
	belongs_to :condition
	attr_accessible :embroidery_month, :print_month, :print_month, :cutting_month, :outline_month, :assembly_month, :washing_month, :tinte_month, :labeled_month, :stock_month, :store_month, :embroidery_amount, :print_amount, :print_amount, :cutting_amount, :outline_amount, :assembly_amount, :washing_amount, :tinte_amount, :labeled_amount, :stock_amount, :store_amount, :condition_id, :cutting_attendant, :embroidery_attendant, :print_attendant,  :outline_attendant, :assembly_attendant, :labeled_attendant, :washing_attendant, :tinte_attendant, :store_attendant, :stock_attendant, :stock_delivery, :stock_end, :stock_real, :store_delivery, :store_end, :store_real, :labeled_delivery, :labeled_end, :labeled_real,   :production_order_id, :assembly_delivery, :assembly_end, :assembly_real, :cutting_delivery, :cutting_end, :cutting_real, :embroidery_delivery, :embroidery_end, :embroidery_real, :outline_delivery, :outline_end, :outline_real, :print_delivery, :print_end, :print_real, :tinte_delivery, :tinte_end, :tinte_real, :washing_delivery, :washing_end, :washing_real
  
  def self.cut(fecha)
    str = fecha.split("-");
    @string = str[1]
  end

end 

