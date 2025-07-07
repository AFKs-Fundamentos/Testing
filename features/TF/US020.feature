Feature: Rating del servicio técnico

  Como cliente quiero realizar un rating para el servicio técnico que recibí para compartir mi experiencia con otros.

  Scenario: Rating del servicio técnico exitosa
    Given el cliente ha recibido un servicio técnico
    When accede a la página de assessment del servicio técnico y completa el formulario con un rating
    Then el rating se guarda correctamente
    And se muestra en la página de assessments de servicio
    And el cliente recibe una confirmación de que su rating ha sido publicado

  Scenario: Error al valorar el servicio técnico
    Given el cliente ha recibido un servicio técnico
    When intenta enviar un assessment en la página de assessments de servicio técnico sin proporcionar una calificación
    Then el cliente recibe un mensaje de error indicando que todos los campos requeridos deben ser completados
    And el assessment no se ha guardado
    