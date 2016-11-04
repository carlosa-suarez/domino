Feature: "Jugar Ficha"

Scenario: "Juego la ficha 1/6"
  Given entro al juego
  When reparto
  And recibo la ficha 1/6
  And juego la ficha 1/6
  Then no debo tener la ficha 1/6
  And la ficha 1/6 entra en el juego

Scenario: "No poder jugar la ficha 1/6"
  Given entro al juego
  When reparto
  And no tengo la ficha 1/6
  Then debo pasar
