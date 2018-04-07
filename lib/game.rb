

class Game

	CADENA = ["P", "E", "R", "R", "Y"]
	ENCONTRADOS = ["-", "-", "-", "-", "-"] 

	def procesar letra = ""
		CADENA.each_with_index do |val, key|
			if val == letra
				ENCONTRADOS[key] = CADENA[key] 
			end   
		end
	
	end

	def resultado 
		resultado = ENCONTRADOS.join()
		return resultado
		
	end
end