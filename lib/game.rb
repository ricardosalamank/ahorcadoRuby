

class Game

	CADENA = ["P", "E", "R", "R", "Y"]
	ENCONTRADOS = ["-", "-", "-", "-", "-"] 

	def procesar letra = ""
		CADENA.each_with_index do |val, key|
			if val == letra
				ENCONTRADOS[key] = CADENA[key] 
			end   
		end
		resultado = ENCONTRADOS.join()
	end
end