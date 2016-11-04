require './lib/juego'

describe "Repartir fichas" do

before(:each) do
  @@juego = Juego.new
end

  it "Deberia repartir 7 fichas a cada jugador" do
    @@juego.repartir
    expect(@@juego.fichas_jugador_1.size).to eq 7
    expect(@@juego.fichas_jugador_2.size).to eq 7
  end

  #it "La reparticion debe ser aleatoria" do
  #  @@juego.repartir
  #  juego_1_jugador_1 = @@juego.fichas_jugador_1
  #  @@juego.repartir
  #  juego_2_jugador_1 = @@juego.fichas_jugador_1
  #
  #    expect(juego_1_jugador_1).not_to eq juego_2_jugador_1
  #  end

end
