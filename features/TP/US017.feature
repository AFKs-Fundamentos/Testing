Feature: Solicitud de advisory de forma virtual
Como usuario  
Quiero solicitar una asesoría de forma virtual
Para solucionar problemas desde casa.


Scenario: Realizar solicitud de asesoría técnica virtual.
    Given el cliente se encuentra en la sección de solicitud de asesorías  y requiere una asesoría virtual,
    When el usuario selecciona la opción de acceder a la reunión virtual
    Then la aplicación web debe mostrar el enlace de la reunión con el técnico, permitiendo al cliente y a los técnicos consultar instrucciones detalladas.

  Scenario:  Problemas al acceder a la guía técnica mediante una reunión virtual. 
    Given el cliente se encuentra en la sección de solicitud de asesorías  y requiere una asesoría virtual,
    When  el usuario selecciona la opción de acceder a la reunión virtual
    Then la aplicación presenta errores para el acceso y no muestra el enlace a la reunión virtual.