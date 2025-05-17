Feature: Página "Nosotros"	

Como usuario  
Quiero  conocer la misión y visión de la startup
Para conocer más sobre la startup.

Scenario: Ingresa a la sección “Sobre Nosotros” 
    Given el usuario accede a la sección "Nosotros" del servicio, 
    When el usuario visualiza la página,
    Then  debe ver la misión, visión y los miembros de la de la startup. 

  Scenario: Sección “Nosotros” inaccesible 
    Given que el usuario accede al servicio por primera vez
    When  el usuario llega a la pantalla inicial.
    Then visualiza un mensaje sobre el servicio inactivo.
