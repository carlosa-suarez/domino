Feature: "Finalizar Juego"

Scenario: "Ganar jugando la ultima ficha"
  Given estoy jugando
  When toca mi turno
  And tengo una sola ficha
  And juego la ficha 1/6
  Then Gane

Scenario: "Ganar jugando por cierre"
  Given estoy jugando
  When toca mi turno
  And no puedo jugar
  And pasa el siguiente turno
  And no puede jugar
  Then Contar los puntos de las fichas del jugador 1
  And Contar los puntos de las fichas del jugador 2
  And Gana el que tenga menos fichas
