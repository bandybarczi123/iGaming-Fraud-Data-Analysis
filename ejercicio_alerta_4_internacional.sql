/* 
PROYECTO: AUDITORÍA FORENSE - CASINO DIGITAL
CASO 4: CAZERÍA DE ACCESOS INTERNACIONALES E INCONSISTENCIAS GEOGRÁFICAS
AUTOR: BANDY BARCZI

Análisis Forense: Esta consulta lanza una red general mediante el comando OR 
para capturar de golpe sesiones iniciadas fuera del mercado regulado de LATAM.

Hallazgos Críticos: 
1. Se detectó una sesión en Berlín, Alemania (IP 46.112.55.12) bajo el proveedor 
   Deutsche Telekom y zona horaria GMT+1.
2. Se detectó un acceso en Guangzhou, China (IP 113.108.12.30) bajo China Telecom 
   en zona GMT+8.

Nota de Verificación Forense (Bandy Barczi):
Nos aseguramos que los movimientos se hacen en LATAM verificando la VPN y los datos 
de origen; una cuenta corresponde originalmente a Chile y la otra a Colombia. 
Esto demuestra que los usuarios legítimos están en nuestra región, pero sus cuentas 
registran conexiones transfronterizas forzadas para evadir controles.

Veredicto: Alertas críticas de posible secuestro de cuenta (Account Takeover) o 
uso de proxy corporativo. Cuentas congeladas de inmediato por el analista nocturno 
para proteger la integridad de los saldos de los clientes.
*/
SELECT id_usuario, pais, direccion_ip, proveedor_internet, timezone
from tracking
where pais = 'ALEMANIA' or pais = 'CHINA'
LIMIT 10;