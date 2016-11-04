class Juego
  attr_accessor  :fichas_jugador_1, :fichas_jugador_2,:cantidad_fichas_cada_uno

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
    repartir_fichas_a_jugadores

  end

  def conteoFichas
    "Tengo #{@fichas_jugador_1.size} fichas"
  end

  def conteoFichasOponente
    "Oponente tiene #{@fichas_jugador_2.size} fichas"
  end

  private
  def repartir_fichas_a_jugadores
    i = 0
    while i < @@cantidad_fichas_cada_uno do
     rand = Random.rand(0..@domino.size-1)
     puts rand

     if (!(@fichas_jugador_1.include? @domino[rand]) and (!@fichas_jugador_2.include? @domino[rand]))
       puts "agrego jugador 1"
       @fichas_jugador_1[i]=@domino[rand]
       i = i + 1
     end
     puts "Fichas jugador 1 son #{@fichas_jugador_1} "

    end
    i = 0
    while i < @@cantidad_fichas_cada_uno do
     rand = Random.rand(0..@domino.size-1)
     puts rand

     if not @fichas_jugador_1.include? @domino[rand] and not  @fichas_jugador_2.include? @domino[rand]
      puts "agrego jugador 2"
       @fichas_jugador_2[i]=@domino[rand]
       i = i + 1
     end
     puts "Fichas jugador 2 son #{@fichas_jugador_2} "
    end
  end
end
