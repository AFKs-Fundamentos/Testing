Feature: Carrito de compras
Como usuario 
Quiero seleccionar y guardar componentes en un carrito de compras
Para tener una lista de componentes para comprar.


Scenario: Guardar componentes en mi carrito de compras.
    Given el cliente ha seleccionado en el icono de carrito de varios componentes
    When accede a la página "Carrito de Compras"
    Then puede ver una lista de los componentes seleccionados con opciones de compra.

  Scenario: Error al seleccionar componentes
    Given el cliente ha seleccionado el icono de carrito de compras de un componente,
    When accede a la página "Carrito de Compras"
    Then el cliente no puede ver los componentes seleccionados para su carrito de compras.