class Juego
  attr_accessor :cantidad_jugadores,
  :cantidad_fichas_cada_uno,
  :fichas_jugador_1


  def repartir
    @fichas_jugador_1 = Array.new
    @fichas_jugador_1 =  ["1/2","1/3","1/1","1/4","1/5","6/6"]
    @cantidad_jugadores = 2
    @cantidad_fichas_cada_uno = 7
  end
end
