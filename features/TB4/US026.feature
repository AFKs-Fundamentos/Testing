Feature: Entrega de productos

Scenario: Ingreso de datos de envío
    Given el cliente ha seleccionado productos para comprar
    When llega a la sección de "Entrega"
    Then el sistema muestra un formulario para ingresar datos
    And valida que los campos obligatorios estén completos antes de continuar

  Scenario: Visualización de pedidos de envío
    Given ha realizado un pedido con envío
    When ingresa a la página de pedidos
    Then puede ver todos los pedidos realizados en la aplicación
    