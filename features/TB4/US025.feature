Feature: Visualización de orden de pago

Scenario: Orden de pago disponible desde historial
    Given el cliente completó o canceló una compra anteriormente
    When accede al historial de pedidos
    Then puede ver el detalle de la orden de pago asociada a cada pedido

  Scenario: Acceso a orden de pago exitosa
    Given el cliente ha agregado productos al carrito
    When llega a la etapa final antes del pago
    Then el sistema muestra la orden de pago con lo necesario para completar la compra