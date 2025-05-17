Feature: Assessment de componentes
Como usuario  
Quiero solicitar una asesoría de forma virtual
Para solucionar problemas desde casa.


Scenario: Realizar solicitud de asesoría técnica virtual.
    Given el cliente ha adquirido un componente
    When accede a la página de detalles del componente que compró y completa el formulario del assessment.
    Then el assessment se guarda correctamente, se muestra en la página del componente y el cliente recibe una confirmación de que su assessment ha sido publicado

  Scenario:  Error al dejar un Assessment
    Given el cliente ha adquirido un componente,
    When intenta dejar un assessment en la página de detalles del componente sin completar todos los campos requeridos (Opciones de Assessment)
    Then el cliente recibe un mensaje de error indicando que los campos requeridos deben ser completados, y su assessment no ha guardado