Feature: Solicitud de soporte técnico presencial
Como usuario  
Quiero solicitar soporte técnico presencial
Para recibir el servicio del técnico en servicio técnico.

Scenario: Solicitud de Soporte Presencial Exitosa
    Given el cliente está en la sección de solicitud de soporte técnico presencial
    When  ingresa su ubicación (dirección o referencia), selecciona el tipo de problema (hardware/software), elige una fecha y hora disponible, y confirma la solicitud,
    Then el sistema valida la cobertura en la zona del cliente y genera un ticket y notificación.

  Scenario:  Solicitud Fallida por Falta de Cobertura 
    Given el cliente intenta solicitar soporte presencial
    When ingresa una ubicación fuera de la zona de cobertura del servicio
    Then el sistema muestra un mensaje: "Lo sentimos, no hay cobertura en tu área. Te sugerimos soporte virtual o consultar disponibilidad en otra ubicación" y no genera ticket ni notificación.