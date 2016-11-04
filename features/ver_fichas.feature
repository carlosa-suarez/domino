Feature: "Ver fichas"

	Scenario: "El usuario debe ver que tiene 7 fichas"
		Given entro al juego
		When reparto
		Then debo ver "Tengo 7 fichas"

	Scenario: "El usuario debe ver que el oponente tiene 7 fichas"
		Given entro al juego
		When reparto
		Then debo ver "jugador tiene 7 fichas"

	Scenario: "El usuario debe ver su arreglo de fichas"
		Given entro al juego
		When reparto
		Then debo ver "[0],[1],[2],[3],[4],[5],[6]"
