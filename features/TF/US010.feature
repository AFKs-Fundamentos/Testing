Feature: Carrito de compras

  Como cliente quiero agregar componentes a un carrito de compras para revisarlos antes de realizar la compra.

  Scenario: Componentes se agregan al carrito
    Given un cliente ha seleccionado uno o varios componentes y los ha agregado al carrito de compras
    When el cliente accede al carrito de compras
    Then la aplicación muestra una lista de los componentes agregados con detalles como nombre, cantidad, subtotal y total
    And permite al usuario revisar y editar los artículos antes de proceder a la compra

  Scenario: Componentes no se agregan correctamente al carrito
    Given un cliente ha intentado agregar uno o varios componentes al carrito de compras
    When el cliente accede al carrito de compras
    Then la aplicación muestra que los componentes no han sido añadidos al carrito o presenta una lista incorrecta
    And no le permite editar o revisar
    