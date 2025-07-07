Feature: Cancelación de compra

  Como cliente quiero poder cancelar un pedido antes de que este proceda si cambio de opinión.

  Scenario: Cancelación de compra antes de ser procesado
    Given el cliente ha iniciado el proceso de pago pero aún no ha sido procesado
    When el cliente selecciona la opción de cancelar el pago
    Then el sistema detiene el procesamiento del pago
    And no se realiza ningún cargo
    And el cliente recibe una notificación confirmando que el pago ha sido cancelado exitosamente

  Scenario: Intento de cancelación después del procesamiento del pago
    Given el cliente ha iniciado el proceso de pago y este ya ha sido procesado
    When el cliente intenta cancelar el pago
    Then el sistema muestra un mensaje de error indicando que la cancelación no es posible porque el pago ya ha sido procesado
    And sugiere contactar al soporte para más ayuda
    