require 'sinatra'
require './lib/juego'

get '/' do
  @@juego = Juego.new
  @@mensaje = ""
  @@mensaje_oponente = ""
  erb :index
end

post '/repartir' do
  @@juego.repartir()
  @fichas_jugador_1 = @@juego.fichas_jugador_1
  @@mensaje_oponente = @@juego.conteoFichasOponente()
  @@mensaje = @@juego.conteoFichas()
  erb :index
end
