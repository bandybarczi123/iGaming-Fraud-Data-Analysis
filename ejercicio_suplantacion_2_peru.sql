/* 
PROYECTO: AUDITORÍA FORENSE - CASINO DIGITAL
CASO 2: INVESTIGACIÓN DE SUPLANTACIÓN DE IDENTIDAD EN PERÚ
AUTOR: BANDY BARCZI

Análisis Forense: Esta consulta busca transacciones rechazadas por 
alerta bancaria internacional de seguridad (Tarjeta Robada).
Hallazgos Cruciales: 
1. Se detectaron 8 cuentas donde el nombre del usuario coincide con el titular, 
   pero la tarjeta está reportada. Se aplica congelamiento preventivo de seguridad.
2. Se detectó el caso crítico del usuario USR-1249 (Cliente 249) utilizando la 
   tarjeta de una tercera persona (María Inés Quispe) bajo alerta de tarjeta robada.
Veredicto: Suplantación de identidad confirmada. Cuenta bloqueada de forma 
definitiva y fondos congelados inmediatamente para mitigar contracargos.
*/
SELECT id_usuario, pais, nombre_usuario, titular_tarjeta, codigo_respuesta
FROM tracking
WHERE pais = 'PERU'
AND codigo_respuesta = 'cod-43 tarjeta robada'
LIMIT 10;