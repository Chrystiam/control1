module ProductionsHelper

  # devuelve las leyendas de la imagen bars.

  def leyenda
  	leyenda = []         # leyendas del grafico
    @data.collect do |key, value| 
    	case key
		when 1
		  leyenda << "Enero #{value} Unidades"
		when 2
		  leyenda << "Febrero #{value} Unidades"
		when 3
		  leyenda << "Marzo #{value} Unidades"
		when 4
		  leyenda << "Abril  #{value} Unidades"
		when 5
		  leyenda << "Mayo #{value} Unidades"
		when 6
		  leyenda << "Junio #{value} Unidades"
		when 7
		  leyenda << "Julio #{value} Unidades"
		when 8
		  leyenda << "Agosto #{value} Unidades"
	    when 9
		  leyenda << "Septiembre #{value} Unidades"
		when 10
		  leyenda << "Octubre #{value} Unidades"
		when 11
		  leyenda << "Noviembre #{value} Unidades"
		when 12
		  leyenda << "Diciembre #{value} Unidades"
		when nil
		  leyenda << "No Hay Valoracion"
		end
    end
    leyenda
  end

end
