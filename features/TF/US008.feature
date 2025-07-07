Feature: Editar perfil de usuario

  Como usuario quiero editar la información de mi perfil para mantener la información de mi cuenta actualizada.

  Scenario: Edición de información de perfil exitosa
    Given un usuario autenticado está en la página de edición de perfil
    When el usuario realiza cambios en su información y selecciona la opción guardar cambios
    Then el sistema debe actualizar la información de su perfil
    And mostrar un mensaje de confirmación

  Scenario: Edición de información de perfil fallida
    Given un usuario autenticado está en la página de edición de perfil
    When el usuario realiza cambios en su información con información incompleta y selecciona la opción guardar cambios
    Then el sistema muestra un mensaje de error describiendo el problema con los datos del perfil
    And no se realizan cambios
    