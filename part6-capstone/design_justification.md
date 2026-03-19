## Storage Systems

In this architecture, multiple storage systems are used to support different use cases of the hospital network. A Data Lake is used to store raw data coming from various sources such as EHR systems, ICU devices, billing, and lab reports. This allows flexibility in handling structured, semi-structured, and unstructured data. A Data Warehouse is used for generating reports such as monthly bed occupancy and department-wise costs, as it provides optimized querying and structured data for analytics.

A Relational Database (OLTP system) is used to manage transactional data such as patient records and billing information, ensuring consistency and reliability. Additionally, a Vector Database is used to support the NLP-based doctor query system. It stores embeddings of patient records, allowing semantic search and enabling doctors to query patient history in natural language.

## OLTP vs OLAP Boundary

The OLTP system in this architecture is represented by the Relational Database, which handles day-to-day transactional operations such as patient updates, billing entries, and real-time record management. It is optimized for fast writes and consistency.

The OLAP system begins at the Data Warehouse, where data from the Data Lake is transformed and structured for analytical purposes. The Data Warehouse is used for reporting and business intelligence tasks. Thus, the boundary between OLTP and OLAP lies between the Relational Database and the Data Warehouse/Data Lake layer, where transactional data is moved into analytical storage for further processing and insights.

## Trade-offs

One major trade-off in this design is the increased system complexity due to the use of multiple storage systems such as Data Lake, Data Warehouse, Vector Database, and Relational Database. While this improves scalability and supports different use cases, it also increases maintenance effort and integration challenges.

To mitigate this, a well-defined data pipeline and orchestration tools can be used to automate data movement and ensure consistency across systems. Additionally, proper monitoring and data governance practices can help maintain data quality and system reliability.

