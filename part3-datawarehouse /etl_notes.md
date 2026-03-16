## ETL Decisions

### Decision 1 — Standardizing Date Format
Problem: The raw dataset contained inconsistent date formats such as 29/08/2023, 12-12-2023, and 2023-02-05.

Resolution: All dates were converted into a standard YYYY-MM-DD format before loading them into the dim_date table. This ensured consistent time-based analysis.

### Decision 2 — Category Case Standardization
Problem: Product categories in the raw data had inconsistent casing such as electronics, Electronics, and ELECTRONICS.

Resolution: All category values were standardized to uppercase (ELECTRONICS, GROCERY, CLOTHING) before inserting into the dim_product table.

### Decision 3 — Handling Missing Values
Problem: Some records in the dataset contained NULL or missing values in important fields.

Resolution: Missing values were cleaned by either removing incomplete records or replacing them with appropriate default values before loading the data into the warehouse.
