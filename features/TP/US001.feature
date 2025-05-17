Feature: Página "Inicio"	

Como usuario  
Quiero ver un apartado inicial del servicio
Para conocer lo más relevante

Scenario: Vista de inicio accesible
    Given el usuario accede al servicio por primera vez
    When el usuario llega a la pantalla inicial
    Then  debe visualizar los principales elementos del servicio.

  Scenario:  Vista de inicio inaccesible 
    Given que el usuario accede al servicio por primera vez
    When  el usuario llega a la pantalla inicial.
    Then visualiza un mensaje sobre el servicio inactivo.
