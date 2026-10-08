# iGaming-Fraud-Data-Analysis
Portafolio de Análisis Forense de Datos y Mitigación de Riesgos en plataformas de iGaming usando consultas en SQL.
### 📊 Interactive Live Dashboard & SQL Querying (Cloud)
To bypass traditional hardware limitations, the database was migrated into a cloud-native engine. A robust SQLite-equivalent pipeline was engineered using advanced `QUERY` functions to isolate and analyze regional risk anomalies across 800 transaction tracking records.

*   **Live Interactive Report:** [🔗 Click here to review the LATAM Fraud Analytics Dashboard](https://google.com)
*   **Key Insight Secured:** Forensic visualization isolates severe deposit volatility and structural anomalies concentrated in the Colombian market (Turnover variance patterns).
*   **SQL Query Pipeline:**
    ```sql
    =QUERY('tracking jugadores internacionales csv'!A:Z; "SELECT S, SUM(W) WHERE S IS NOT NULL GROUP BY S LABEL SUM(W) 'Total Depósitos (USD)'"; 1)
    ```
