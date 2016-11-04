Feature: "Repartir Fichas"

Scenario: "El juego tiene 2 set de 7 fichas"
  Given entro al juego
  When reparto
  Then debo tener 7 fichas y 2 jugadores

Scenario: "El juego tiene 2 set de 7 fichas no repetidas"
  Given entro al juego
  When reparto
  Then debo tener 7 fichas no repetidas

Scenario: "Quiero recibir la ficha 1/6"
  Given entro al juego
  When reparto
  And recibo la ficha 1/6
  Then debo tener la ficha 1/6
