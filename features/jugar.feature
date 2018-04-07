Feature: 
	Como usuario del juego ahorcado XP
	quiero ver un campo de texto y un boton para ingresar letras al azar
	al ingresar una letra quiero ver a cual posicion corresponde
	en la palabra secreta

Scenario: quiero ver la palabra con la letra
	Given que abri la app
	#And ingreso la letra "A" en el campo de texto
	Then debo ver "LETRA:"

Scenario: quiero ver un boton para enviar letra
	Given que abri la app
	Then debo ver "ENVIAR"

Scenario: cuando ingrese una letra E la debo ver en la palabra
	Given que abri la app
	And ingreso la letra "E" en el campo texto
	And inicio el juego
	Then debo ver "-E---"

Scenario: cuando ingrese una letra A la debo ver en la palabra
	Given que abri la app
	And ingreso la letra "A" en el campo texto
	And inicio el juego
	Then debo ver "-----"



