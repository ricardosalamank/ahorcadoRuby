require 'sinatra'
require './config'
require './lib/game.rb'

get '/' do
	session['palabra'] = "-----"
	session['game'] = Game.new
	session['game'].reiniciar
	erb :index
end

post '/procesar' do
	
	session['game'].procesar params['letra_ingresada'].upcase
	session['palabra'] = session['game'].resultado
	session['faltas'] = session['game'].resultado_faltas
	session['letrasmal'] = session['game'].resultado_letrasmal

	if (session['palabra'] == "PERRY") 
		session['palabra'] = "PERRY GANASTE"
	end
	
	erb :index 
end