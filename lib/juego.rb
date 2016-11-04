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

    #i = 0
    #while i < 7 do
    #  rand = random.rand(0..@domino.size)
    #   @fichas_jugador_1[i] = @domino[rand]
    #end
    @domino.each do |ficha|
      if @fichas_jugador_1.size < 7
        @fichas_jugador_1.push(ficha)
      elsif @fichas_jugador_2.size < 7
        @fichas_jugador_2.push(ficha)
      end
    end
  end

  def conteoFichas
    "Tengo #{@fichas_jugador_1.size} fichas"
  end
end
