Feature: "Repartir Fichas"

Scenario: "El juego tiene 2 sets de 7 fichas"
  Given entro al juego
  When comienza
  Then debo ver 2 sets de 7 fichas
