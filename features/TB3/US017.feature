Feature: Rating
Como usuario 
Quiero calificar productos de la aplicación
Para brindar mi opinion sobre el producto y recomendar su compra.


Scenario: Crear calificación para un producto.
    Given el cliente quiere crear una calificación para un producto
    When ingresa la calificación en un rango de 1 a 5 estrellas y una descripción en el formulario para un producto
    Then puede ver la calificación que creo para el producto.

  Scenario: Error al crear calificación
    Given el cliente quiere crear una calificación para un producto,
    When ingresa una calificación de cero estrellas y una descripción en el formulario para un producto
    Then el sistema no guarda su calificación y responde con error.