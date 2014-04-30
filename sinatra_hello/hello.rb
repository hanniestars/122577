require 'sinatra'

def add(n,m)
	n+m
end

get '/hi' do
	number = 5
	if number.odd?
		message = 'the number is odd'
	else
		message = 'the number is even'
	end
	"<h1>Hello, World From Sinatra</h1>
<h2>#{add(5,2)}</h2>
<h2>#{add(6,7)}</h2>
<h2>#{message}</h2>"
end

get '/list' do
	animals = ['dog', 'cat', 'panda', 'giraffe']	
	str = '<ol>'
	animals.each do |animal|
		str += "<li>#{animal}</li>"
	end
	str += '</ol>'
end



