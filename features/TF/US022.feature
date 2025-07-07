Feature: Gestión de compras

  Como cliente, quiero tener acceso a un lugar centralizado donde pueda ver las compras que he realizado para consultar y hacer seguimiento del estado de cada una.

  Scenario: Visualización de historial de compras
    Given el cliente ha comprado un producto
    When accede a la sección centralizada de pedidos
    Then puede visualizar la lista de pedidos que ha realizado hasta el momento

  Scenario: No hay compras registradas
    Given el cliente accede a la sección centralizada de pedidos
    When no ha realizado ninguna compra
    Then el sistema muestra un mensaje indicando que aún no hay pedidos registrados
    