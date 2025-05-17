Feature: Sección "Features"

Como usuario  
Quiero saber qué funcionalidades tiene la aplicación web 
Para conocer evaluarlo con la competencia.

Scenario: Visualización exitosa de las funcionalidades
    Given el usuario accede a la sección "Features" desde el menú principal,
    When la página carga correctamente,
    Then el sistema muestra los principales beneficios de la aplicación web.

  Scenario: Sección "Features" inaccesible
    Given el usuario intenta acceder a la sección "Features",
    When hay un error de carga o la página no responde,
    Then  el sistema muestra un mensaje: "Lo sentimos, no podemos mostrar las funcionalidades en este momento. Por favor, inténtalo más tarde".
