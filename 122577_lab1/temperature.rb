require 'sinatra'

def ctof(val)
	val * 9 / 5 + 32
end

def ctok(val)
	val + 273
end

def ktoc(val)
	val - 273
end

def ktof(val)
	((val + 459.67) * 5/9)
end

def ftoc(val)
	(val * 9/5 + 32)
end

def ftok(val)
	(val * 9/5 - 459.67)
end

get '/celsius/:val' do
	"#{params[:val]}"
	if val == 100
		message = 'This is the boiling point'
	else if val == 0
		message = 'This is the freezing point'
	else if val == -273.15
		message = 'This is absolute zero'
	end
	"<h2>Fahrenheit: #{ctof(val)}°F</h2>
	<h2>Kelvin: #{ctok(val)}°K</h2>"
end

get '/kelvin/:val' do
	"#{params[:val]}"
	if val == 373.15
		message = 'This is the boiling point'
	else if val == 273.15
		message = 'This is the freezing point'
	else if val == 0
		message = 'This is absolute zero'
	end
	"<h2>Celsius: #{ktoc(val)}°C</h2>
	<h2>Fahrenheit: #{ktof(val)}°F</h2>"
end

get '/fahrenheit/:val' do
	"#{params[:val]}"
	if val == 212
		message = 'This is the boiling point'
	else if val == 32
		message = 'This is the freezing point'
	else if val == -459.67
		message = 'This is absolute zero'
	end
	"<h2>Celsius: #{ftoc(val)}°C</h2>
	<h2>Kelvin: #{ftok(val)}°K</h2>"
end



