Feature: Confirmación del pago

  Como cliente quiero recibir una confirmación de pago clara y detallada al finalizar mi compra.

  Scenario: Confirmación de pago exitosa
    Given el cliente ha finalizado el proceso de compra y ha realizado el pago correctamente
    When el sistema procesa el pago
    Then el cliente recibe una confirmación de pago clara y detallada que incluye el monto total, los detalles de los artículos comprados, la forma de pago utilizada y un número de referencia de la transacción

  Scenario: Fallo en la confirmación de pago
    Given el cliente ha finalizado el proceso de compra
    When se produce un error en el procesamiento del pago o en la generación de la confirmación
    Then el cliente no recibe la confirmación de pago
    And se muestra un mensaje indicando que hubo un problema con la transacción
    And se sugiere revisar la información del pago o contactar al soporte
    