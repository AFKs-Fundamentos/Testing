Feature: Lista de deseos
Como usuario 
Quiero seleccionar y guardar componentes en una lista de deseos
Para tener una lista de componentes que deseo adquirir.


Scenario: Guardar componentes en mi lista de deseos.
    Given el cliente ha seleccionado en el icono de lista de deseos de varios componentes
    When accede a la página "Lista de Deseos"
    Then puede ver una lista de los componentes seleccionados con opciones para administrar su lista.

  Scenario: Error al seleccionar componentes
    Given el cliente ha seleccionado el icono de lista de deseos de un componente,
    When accede a la página "Lista de Deseos"
    Then el cliente no puede ver los componentes seleccionados para su lista de deseos.