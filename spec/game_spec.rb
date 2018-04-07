require './lib/game.rb'

describe Game do
	it "El juego de iniciar en -----" do
		game = Game.new
		expect(game.resultado).to eq "-----"
	end 

	it "Si ingreso A, debo obtener -----" do
		game = Game.new
		game.procesar "A"
		expect(game.resultado).to eq "-----"
	end

	it "si ingreso E, debo obtener -E---" do
		game = Game.new
		game.procesar "E"
		expect(game.resultado).to eq "-E---"
	end

	it "Si ingreso E y P, debo obtener PE---" do
		game = Game.new
		game.procesar "E"
		game.procesar "P"
		expect(game.resultado).to eq "PE---"
	end

	it "i ingreso E, P y H, debo obtener PE---" do
		game = Game.new
		game.procesar "E"
		game.procesar "P"
		game.procesar "H"
		expect(game.resultado).to eq "PE---"
	end

	it "Si ingreso E, P y R, debo obtener PERR-" do
		game = Game.new
		game.procesar "E"
		game.procesar "P"
		game.procesar "R"
		expect(game.resultado).to eq "PERR-"
	end

	it "Si ingreso E, P , R y vacio debe obtener PERR-" do
		game = Game.new
		game.procesar "E"
		game.procesar "P"
		game.procesar "R"
		game.procesar ""
		expect(game.resultado).to eq "PERR-"
	end

	it "Si ingreso E, P , R y 9 debe obtener PERR-" do
		game = Game.new
		game.procesar "E"
		game.procesar "P"
		game.procesar "R"
		game.procesar "9"
		expect(game.resultado).to eq "PERR-"
	end
end
# PERRY
# El juego de iniciar en ----- 
# Si ingreso A, debo obtener ----- (evaluar contar un error)
# Si ingreso E, debo obtener -E---
# Si ingreso E y P, debo obtener PE---
# Si ingreso E, P y H, debo obtener PE--- (evaluar contar un error) 
# Si ingreso E, P y R, debo obtener PERR- 
# Si ingreso vacio debe obtener ----- 
# Si ingreso numeros debe obtener ERROR
#