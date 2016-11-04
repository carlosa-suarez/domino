class Juego
  attr_accessor  :fichas_jugador_1, :fichas_jugador_2

  def repartir
    @domino = Array.new
    @domino = ["1/1","1/2","1/3","1/4","1/5","1/6","2/2",
              "2/3","2/4","2/5","2/6","3/3","3/4","3/5",
              "3/6","4/4","4/5","4/6","5/5","5/6","0/0",
              "0/1","0/2","0/3","0/4","0/5","0/6","6/6"]
    @fichas_jugador_1 = Array.new
    @fichas_jugador_2 = Array.new
        random = Random.new
    @@cantidad_fichas_cada_uno = 7
    @@cantidad_jugadores = 2

    i = 0
    while i < @@cantidad_fichas_cada_uno do
     rand = random.rand(0...@domino.size)
      @fichas_jugador_1[i] = @domino[rand]
      @fichas_jugador_2[i] = @domino[rand]
      i = i + 1
    end
  end
end
