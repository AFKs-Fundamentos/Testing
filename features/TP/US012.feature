Feature: Registrar nuevo producto
Como usuario  
Quiero  agregar nuevos productos al sistema con sus detalles (nombre, categoría, SKU, precio, stock mínimo) 
Para mantener el inventario actualizado.

Scenario:  Registro exitoso
    Given el técnico está en la página de gestión de inventario
    When ingresa los datos del producto (nombre, SKU, categoría, precio, stock mínimo) y confirma
    Then el sistema guarda el producto, muestra un mensaje de éxito y actualiza la lista de inventario.

  Scenario:   Registro fallido (SKU duplicado)
    Given el técnico intenta registrar un producto
    When  ingresa un SKU ya existente
    Then el sistema muestra un error: "SKU ya registrado, utiliza otro código" y no guarda el producto.

