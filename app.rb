require 'sinatra'
require './lib/juego'

get '/' do
  @@juego = Juego.new
  @@mensaje = ""
  erb :index
end

post '/repartir' do
  @@juego.repartir()
  @fichas_jugador_1 = @@juego.fichas_jugador_1
  @@mensaje = @@juego.conteoFichas()
  erb :index
end
