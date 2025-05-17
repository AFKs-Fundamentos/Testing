Feature: Sección "Ayuda"

Como usuario  
Quiero visualzar una sección de ayuda
Para  resolver posibles dudas o problemas.

Scenario:  Observa la sección "Ayuda" 
    Given el usuario está en la página principal del sitio web,
    When el usuario hace clic en "Ayuda".
    Then debe ser dirigido a la sección de ayuda que contiene una lista de preguntas frecuentes (FAQ). 

  Scenario:  Sección "Ayuda" inaccesible 
    Given el usuario está en la página principal del sitio web, 
    When el usuario hace clic en "Ayuda".
    Then  observa un mensaje de error que indica que la información no está disponible en este momento.
