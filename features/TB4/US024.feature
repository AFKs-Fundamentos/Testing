Feature: Cancelación del compra

Scenario: Cancelación de compra antes de ser procesado
    Given el cliente ha iniciado el proceso de pago
    And el pago aún no ha sido procesado
    When el cliente selecciona la opción de cancelar el pago
    Then el sistema detiene el procesamiento
    And no se realiza ningún cargo
    And el cliente recibe notificación de cancelación exitosa

  Scenario: Intento de cancelación después del procesamiento
    Given el cliente ha iniciado el proceso de pago
    And el pago ya ha sido procesado
    When el cliente intenta cancelar el pago
    Then el sistema muestra un mensaje de error
    And indica que la cancelación no es posible
    And sugiere contactar al soporte