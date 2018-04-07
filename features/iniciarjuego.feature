Feature: 
	Como usuario del juego ahorcado XP
	quiero observar el titulo de juego 
	y ver los campos vacios de la palabra a buscar

	
Scenario: quiero ver el nombre del juego
	Given que abri la app
	Then debo ver "AHORCADO XP"


Scenario: quiero ver el texto de palabra a buscar
	Given que inicie el juego	 
	Then debo ver "Palabara a buscar:"

Scenario: quiero ver los espacios que corresponde a las letras de la palabra
	Given que inicie el juego
	Then debo ver "-----"
