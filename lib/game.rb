

class Game

	CADENA = ["P", "E", "R", "R", "Y"]
	ARRFALTAS = ["A", "H", "O", "R", "C", "A", "D", "O"] 

	def initialize
		@faltas = 0
		@mensaje = ""
		@letrasmal = ""
		@encontrados = ["-", "-", "-", "-", "-"]
	end

	def procesar letra = ""
		falta = true
		CADENA.each_with_index do |val, key|
			if val == letra
				@encontrados[key] = CADENA[key] 
				falta = false
			end   
		end

		if falta == true
			@letrasmal += letra + "-"
			@mensaje += ARRFALTAS[@faltas]
			@faltas += 1
		end
	end

	def resultado 
		resultado = @encontrados.join()
		return resultado
	end

	def resultado_faltas
		return @mensaje
	end

	def resultado_letrasmal
		return @letrasmal
	end

	def reiniciar
		@faltas = 0
		@mensaje = ""
		@encontrados = ["-", "-", "-", "-", "-"]
	end
end