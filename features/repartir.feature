Feature: "Repartir Fichas"

Scenario: "El juego tiene 2 set de 7 fichas"
  Given entro al juego
  When reparto
  Then debo tener 7 fichas y 2 jugadores

  Scenario: "El juego tiene 2 set de 7 fichas no repetidas"
    Given entro al juego
    When reparto
    Then debo tener 7 fichas no repetidas
