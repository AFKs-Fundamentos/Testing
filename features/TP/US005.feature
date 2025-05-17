Feature: Sección "Precios"

Como usuario  
Quiero acceder a una sección de precios diferenciada según mi rol (cliente o técnico)
Para conocer los costos de los servicios o las opciones de suscripción disponibles.

Scenario: Cliente visualiza precios de servicios técnicos
    Given el usuario navega a la sección "Precios" como cliente, 
    When selecciona la opción "Solicitar Servicio".
    Then  el sistema muestra una tabla comparativa con tipos de servicios (virtual, presencial, prioritario), costos por servicio, promociones y opciones de pago y un CTA.


  Scenario: Técnico visualiza planes de suscripción 
    Given el usuario navega a la sección "Precios" como técnico,
    When  selecciona la opción "Ofrecer Servicios".
    Then  el sistema muestra planes disponibles (free, premium y premium plus), beneficios detallados y un CTA para "Registrarse" o "Actualizar Plan".

  Scenario: Cambio entre segmentos (cliente/técnico)
    Given el usuario está en la sección "Precios", 
    When  alterna entre las pestañas "Solicitar Servicio" y "Ofrecer Servicios", 
    Then  el sistema actualiza dinámicamente la información sin recargar la página, mostrando los precios correspondientes al segmento seleccionado.

  Scenario: Error al cargar la sección de precios
    Given el usuario intenta acceder a la sección "Precios",
    When   hay un error de conexión o datos no cargados
    Then  el sistema muestra un mensaje: "Lo sentimos, no podemos mostrar los precios en este momento. Por favor, inténtalo más tarde".

