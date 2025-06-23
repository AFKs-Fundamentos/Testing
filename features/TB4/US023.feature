Feature: Confirmación del pago

Scenario: Confirmación de pago exitosa
    Given el cliente ha finalizado el proceso de compra y realizado el pago correctamente
    When el sistema procesa el pago
    Then el cliente recibe una confirmación de pago clara y detallada.

  Scenario: Fallo en la confirmación de pago
    Given el cliente ha finalizado el proceso de compra
    When se produce un error en el procesamiento del pago
    Then el cliente no recibe la confirmación de pago
    And se muestra un mensaje indicando el problema con la transacción
    And se sugiere revisar la información o contactar soporte