Feature: "Ver fichas"

	Scenario: "El usuario debe ver la cantidad de fichas propias"
		Given entro al juego
		When se reparten fichas
		Then debo ver "Tengo 7 fichas"

	Scenario: "El usuario debe ver la cantidad de fichas del oponente"
		Given entro al juego
		When se reparten fichas
		Then debo ver "jugador tiene 7 fichas"
