require 'sinatra'
require './config'

get '/' do
	session['palabra'] = "-----"
	erb :index
end