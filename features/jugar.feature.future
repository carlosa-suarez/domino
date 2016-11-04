Feature: "Jugar Ficha"

Scenario: "Juego la ficha 1/6"
  Given entro al juego
  When reparto
  And recibo la ficha 1/6
  And juego la ficha 1/6
  Then no debo tener la ficha 1/6
  And la ficha 1/6 entra en el juego

Scenario: "No poder jugar la ficha 6/6"
  Given entro al juego
  When reparto
  And no tengo la ficha 6/6
  And pasa el turno al otro jugador
  Then quedo con 7 fichas

Scenario: "No poder jugar la ficha 6/6"
  Given estoy en mi turno
  When las fichas en los extremos son 4/5 y 5/3
  And solo tengo la ficha 6/6
  And pasa el turno al otro jugador
  Then quedo con 1 ficha
