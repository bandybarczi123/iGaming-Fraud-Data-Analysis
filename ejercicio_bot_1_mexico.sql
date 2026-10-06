/* 
PROYECTO: AUDITORÍA FORENSE - CASINO DIGITAL
CASO 1: INVESTIGACIÓN DE REDES DE BOTS EN MÉXICO
AUTOR: BANDY BARCZI

Análisis Forense: Esta consulta identifica usuarios que operan 
mediante servidores en la nube (Data Centers) o conexiones VPN. 
Hallazgo: Se detectó que los usuarios USR-1449, USR-1450 y USR-1451 
comparten correos secuenciales sospechosos. Su is_vpn está en FALSE, 
lo que demuestra que el estafador no usó una VPN común, sino un 
script automatizado directo en un servidor virtual para camuflarse.
Veredicto: Cuentas bloqueadas automáticamente por riesgo de bot.
*/
SELECT id_usuario, e_mail, ip_type, is_vpn
FROM tracking
WHERE pais = 'MEXICO'
AND (ip_type = 'data center' OR is_vpn = 'TRUE')
LIMIT 10;

