require 'sinatra'
require './room.rb'

get '/' do
	erb :frontpage
end

get '/listofrooms' do
	erb :listofrooms
end

get '/aboutus' do
	erb :aboutus
end

get '/makereservation' do
	erb :makereservation
end

post '/makereservation' do
	@name = params[:name]
	@type = params[:type]
	erb :confirmation
end

post '/confirmation' do
	@room = Room.newparams[:type]
	erb :room
end


