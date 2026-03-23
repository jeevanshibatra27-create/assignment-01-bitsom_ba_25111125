## Storage Systems

For this hospital network AI-powered data system, multiple storage systems have been chosen to meet the specific needs of each goal. The **OLTP database** (e.g., PostgreSQL) handles transactional and operational data such as historical treatment records, clinical notes, and hospital management data (admissions, billing, etc.). This ensures that day-to-day hospital operations are reliably captured in a structured format. The **Time-Series Database** (e.g., InfluxDB) is used specifically for real-time ICU vitals, as it efficiently stores high-frequency time-stamped data from monitoring devices. For analytics and predictive modeling, the **Data Warehouse** (e.g., Snowflake or BigQuery) stores cleaned and structured data, enabling the ML model to predict patient readmission risk and generating monthly reports for management. Lastly, a **Vector Database** (e.g., Pinecone or Milvus) is implemented to store clinical text in a semantic format, enabling natural language queries from doctors and supporting semantic search capabilities.

---

## OLTP vs OLAP Boundary

The design clearly separates transactional (OLTP) and analytical (OLAP) systems. The **OLTP boundary** ends at the operational database layer where patient records, clinical notes, billing data, and ICU monitoring feeds are captured in near real-time. Beyond this, data is transformed, cleaned, and loaded into the **OLAP layer**, which includes the Data Warehouse and Vector Database. Analytical operations, including ML predictions, semantic search queries, and BI report generation, are performed on the OLAP systems. This separation ensures that transactional operations are not impacted by heavy analytical workloads, providing both performance and data reliability.

---

## Trade-offs

One significant trade-off in this design is the complexity introduced by maintaining multiple specialized storage systems. While this allows optimized storage and query performance for different data types (structured, semi-structured, unstructured, and time-series), it increases system maintenance and operational overhead. To mitigate this, automated ETL pipelines and monitoring tools can be implemented to ensure data consistency and smooth integration between OLTP, Data Lake, Data Warehouse, and Vector Database layers. Additionally, using cloud-native managed services for each storage type can reduce administrative overhead and improve scalability without compromising the performance of transactional or analytical workloads.

---
