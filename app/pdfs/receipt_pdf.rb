class ReceiptPdf < Prawn::Document

  def initialize(fecha, header, receipt, view)
     super()
     logo 
     @receipts = receipt
     @header = header
     @fecha = fecha
     @vista = view
     @total = @receipts.sum(&:total_value)
     fecha_uno
     orden
     client
     data 
     registro
     table_total
  end

  def logo
    move_up 40
    logopath =  "#{Rails.root}/app/assets/images/recibo.png"
    image logopath, :width => 300, :height => 735
  end

  def fecha_uno
	  move_up 500
	  text  "||| Dia: #{@fecha[2]} | Mes: #{@fecha[1]} | Ano: #{@fecha[0]}", :align => :left 
  end 

  def orden
    move_up 25
    text "Registro de Pago # -------------------------------------------------------------
    1882 -------------------------------------------------------------------------" , :align => :right
    
  end

  def client
      move_down 30
    text "||| Cliente: #{@header.client} --------------  CC o NIT: #{@header.identification}

     ||| Direccion: #{@header.adress} -------------- Tel: #{@header.phone} 

      ||| Ciudad: #{@header.city.name}"
  end 

 def data
  move_down 22
      text "||| Descripcion ------------- Cant - Vr Unidad -- Subtotal"
 end
      
  def registro
    move_down 20
    text "||| Juego de Cama  --------- 3  ---- $15000 ----- $45000

    ||| Camisa Manga Larga  - 34  --- $4000 ------ $136000

    || Camisa (Linia Interior)  - 34  --- $3000 ------ $102000

    ||| Pijama (Linia Interior)  - 43  --- $9000 ------ $387000

    ||| Juego de Cama  -------- 53  --- $15000 ----- $795000

    ||| Pijama (Linia Interior)  - 53  --- $9000 ------ $477000

    ||| Sudadera (Deportiva)  - 53  --- $9000 ------ $387000"
  end

  #def registro
    #move_down 20
    #@receipts.map do |r| 
      #text "||| #{r.garment.name}  --------- #{r.amount}  ---- $#{r.unity_value} ----- $#{r.total_value}"
    #end
  #end


  def table_total
      move_down 113
      text "Valor Total:  $#{@total} ---------------------------------------------------------------- ", :align => :right
  end

end
