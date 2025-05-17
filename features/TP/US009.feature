Feature: Recomendación personalizada de componentes

Como usuario  
Quiero especificar las tareas, programas, presupuesto y componentes propios
Para recibir recomendaciones personalizadas a mis necesidades.

Scenario:  Especificar información y recibir recomendaciones personalizadas 
    Given un cliente ha ingresado información sobre los programas que utiliza, su presupuesto y hardware del que ya dispone, 
    When seleccione la opción de recibir recomendaciones personalizadas
    Then la aplicación le ofrece opciones y recomendaciones adaptadas a la información ingresada por el usuario.

  Scenario:  Especificar información y recibir recomendaciones incoherentes
    Given un cliente ha ingresado información sobre los programas que utiliza, su presupuesto y hardware del que ya dispone,
    When seleccione la opción de recibir recomendaciones personalizadas
    Then la aplicación le ofrece opciones y recomendaciones incoherentes que no tienen relación con la información ingresada por el usuario.
