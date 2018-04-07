require 'sinatra'
require './config'
require './lib/game.rb'

get '/' do
	session['palabra'] = "-----"
	erb :index
end

post '/procesar' do
#	session['game'] = Game.new
#	params['palabra'] = session['game'].procesar params['letra_ingresada']

	if params['letra_ingresada'] == "E"
		session['palabra'] = "-E---"
	else
		session['palabra'] = "-----"
	end	
	erb :index 
end