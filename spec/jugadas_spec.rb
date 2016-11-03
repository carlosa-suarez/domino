describe "Realizar jugada"
  it "Deberia permitir hacer una jugada si tengo fichas para jugar" do
    fichas[0,1,2,3,4,5,6]
    expect(fichas.include? 1).to be (true)
  end
end
