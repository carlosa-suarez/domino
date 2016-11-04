require './lib/juego'

describe "Juego" do
  before(:each) do
    @juego = Juego.new
    @juego.repartir()
  end

  it "muestra cuantas fichas tengo" do
    mensaje = @juego.conteoFichas()
    expect(mensaje).to eq "Tengo 7 fichas"
  end

  it "muestra cuantas fichas tiene un jugador" do
    mensaje = @juego.conteoFichasOponente()
    expect(mensaje).to eq "Oponente tiene 7 fichas"
  end

end
