require 'sinatra'
require './config'
require './lib/game.rb'

get '/' do
	session['palabra'] = "-----"
	session['game'] = Game.new
	erb :index
end

post '/procesar' do
	
	session['game'].procesar params['letra_ingresada']
	session['palabra'] = session['game'].resultado
	
	erb :index 
end