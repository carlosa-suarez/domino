require 'sinatra'
require './lib/juego'

get '/' do
  @@juego = Juego.new
  erb :index
end

post '/repartir' do
  @@juego.repartir
  "Uruguay 15 copas"

end
