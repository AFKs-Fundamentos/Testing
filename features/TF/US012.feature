Feature: Registrar nuevo producto

  Como técnico, quiero agregar nuevos productos al sistema con sus detalles (nombre, categoría, SKU, precio, stock mínimo) para mantener el inventario actualizado.

  Scenario: Registro exitoso
    Given el técnico está en la página de gestión de inventario
    When ingresa los datos del producto como nombre, SKU, categoría, precio y stock mínimo y confirma
    Then el sistema guarda el producto
    And muestra un mensaje de éxito
    And actualiza la lista de inventario

  Scenario: Registro fallido (SKU duplicado)
    Given el técnico intenta registrar un producto
    When ingresa un SKU ya existente
    Then el sistema muestra un error "SKU ya registrado, utiliza otro código"
    And no guarda el producto
    