Feature: Filtro de búsqueda de componentes	

Como usuario  
Quiero seleccionar características de componentes adecuados
Para mis necesidades y presupuesto.

Scenario:  Uso de filtro de componentes 
    Given el cliente quiere buscar componentes.
    When utiliza el filtro de componentes por sus características.
    Then  la aplicación debe mostrar una lista de componentes de PC según las características seleccionadas en el filtro.

  Scenario: Filtro de componentes incorrecto 
    Given el cliente ha seleccionado las características del componente en el filtro
    When selecciona la opción de filtrar 
    Then la aplicación muestra una lista de componentes que no cumplen con las características seleccionadas.