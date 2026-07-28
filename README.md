# FMCG Fulfillment & Customer Retention Analytics Engine

An automated, AI-driven backend data pipeline and modern analytical sheet environment designed to evaluate delivery reliability metrics, minimize revenue leakage, and prevent customer churn.

---

## 📋 Problem Statement 
AtliQ Mart, a fast-growing Fast-Moving Consumer Goods (FMCG) manufacturer based in Gujarat, India, currently operates across Surat, Ahmedabad, and Vadodara with immediate plans to expand into Tier 1/metro cities. 

However, the company faces a critical roadblock: **several major, high-value customers have refused to renew their annual commercial contracts** due to severe delivery service issues. Essential shipments are frequently arriving either late or incomplete. To rescue these contracts and secure expansion, management requires a robust tracking architecture to monitor three core Service Level Agreements (SLAs) daily against rigid, customer-specific targets:
*   **On-Time Delivery (OT %):** Ratio of orders delivered precisely on schedule.
*   **In-Full Delivery (IF %):** Ratio of orders containing the exact quantities requested.
*   **On-Time In-Full (OTIF %):** The golden standard metric indicating shipments that were both fully complete and entirely on schedule.

---

## 🏗️ Technical Architecture 
The project completely bypasses traditional monolithic BI architectures, deploying a modern, event-driven data pipeline combined with an AI-integrated infinite-canvas spreadsheet ecosystem:

```text
[ Gmail Daily Ingestion ] ──► [ n8n Automation Engine ] ──► [ Supabase Cloud (Postgres) ] ──► [ Quadratic AI Canvas ]
```

1. **Data Ingestion (n8n):** Scheduled workflow triggers dynamically scan incoming regional emails (e.g., India and USA distribution attachments) matching live date criteria to parse and standardize attached daily raw data tables.
2. **Data Cloud Storage & Schema (Supabase / PostgreSQL):** Processed operational records are structuralized and hosted securely on a cloud instances managed via Supabase. The data uses a dimensional star-schema database mapping central fact tables (`fact_orders`, `fact_aggregate`) to contextual dimension structures (`dim_customers`, `dim_products`, `dim_targets`).
3. **Data Analytics & Interface (Quadratic):** A serverless data-sheet grid connects directly to the hosted Supabase PostgreSQL instance. SQL blocks fetch targeted pipeline segments, Python blocks manipulate arrays, and native AI capabilities permit immediate prompt-driven diagnostics directly on the active canvas.

---

## 🛠️ Tools & Technologies Used
*   **[n8n Workflow Automation Platform](https://n8n.io):** For programmatic node-based scheduling, date-formatting string expressions, and automating real-time ingestion pipelines.
*   **[Supabase](https://supabase.com):** The open-source Firebase alternative utilized as our secure cloud backend host to provision, scale, and manage our managed relational PostgreSQL database warehouse.
*   **[PostgreSQL](https://postgresql.org):** Serves as the core relational database storage engine housing our analytical schemas.
*   **[Quadratic](https://quadratichq.com):** An infinite, collaborative cloud spreadsheet workspace housing live database connection integrations, embedded Python/SQL runtimes, and conversational AI generation.
