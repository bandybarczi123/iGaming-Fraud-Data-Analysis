/* 
PROYECTO: AUDITORÍA FORENSE - CASINO DIGITAL
CASO 3: PREVENCIÓN DE LAVADO DE ACTIVOS (AML) EN COLOMBIA
AUTOR: BANDY BARCZI

Análisis Forense: Esta consulta busca comportamientos financieros 
anómalos donde se solicitan retiros altos con un volumen de juego mínimo.

Hallazgo Crítico: Se detectó al usuario USR-1649 (Cliente 649) ingresando 
un depósito de 4000, registrando un total_jugado de apenas 10 y solicitando 
un retiro inmediato de $3.980. El dinero no fue arriesgado en la plataforma.

Nota de Experiencia Operativa (Bandy Barczi):
Este comportamiento en casinos físicos es muy llamativo. En Chile tenemos 
que reportar inmediatamente montos que superen los 2 millones de pesos. 
Si vemos que alguien cambia esa cantidad, luego juega un par de fichas 
y después vemos que se va a caja, es un indicio de lavado de dinero y usa 
el casino para hacerlo. En el iGaming, el comportamiento es el mismo, y es 
más fácil: no lo vemos a él, pero vemos su comportamiento a través de los datos.

Veredicto: Lavado de dinero confirmado. Bloqueo inmediato de la cuenta y 
congelamiento de los fondos para auditoría de cumplimiento normativo.
*/
SELECT id_usuario, pais, monto_deposito, total_jugado, total_retirado
FROM tracking
where pais = 'COLOMBIA'
AND total_retirado  = '$3.980'
 and total_jugado  <  20
LIMIT 10; 