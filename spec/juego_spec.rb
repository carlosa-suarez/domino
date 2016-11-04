require './lib/juego'

describe "Juego" do
  before(:each) do
    @juego = Juego.new
  end
  it "muestra cuantas fichas tiene un jugador" do
    fichas = [0,1,2,3,4,5,6]
    expect(fichas.size).to be (7)
  end

end
