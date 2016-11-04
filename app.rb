require 'sinatra'
require './lib/juego'

get '/' do
  @@juego = Juego.new
  @@mensaje = ""
  erb :index
end

post '/repartir' do
  @@juego.repartir

  @@mensaje = @juego.conteoFichas()

end
