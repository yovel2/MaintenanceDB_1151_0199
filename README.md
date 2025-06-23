
# 👥 Team:

Yair Levi - 213200199  
Yovel Yehoshua - 213571151

# 🖥️ System Name:

* Streaming Infrastructure maintenance Management System

## Netflix Project: maintenance - Phase A Report

### 📑 Table of Contents

1. Introduction  
2. ERD & DSD Diagrams  
3. Design Decisions  
4. Data Insertion Methods (Screenshots)  
5. Backup and Restore (Screenshots)  

---

### 📘 Introduction

This project manages data for a global video streaming company that runs thousands of servers and data centers across the world. The system stores data about servers, streaming sessions, maintenance logs, traffic usage, and error logs. Our main goal is to track server performance, handle problems, and analyze streaming quality for users.

#### Main Features:

* Save and track details of servers and data centers.  
* Store information about user streaming sessions.  
* Monitor network traffic like download/upload speeds and latency.  
* Record maintenance activity for each server.  
* Log errors and their effects on users.  

---

### 📊 ERD & DSD

**ERD:**  
![erd](https://github.com/user-attachments/assets/01a60840-4e7c-40f5-934d-bd70fdb86ff6)

**DSD:**  
![dsd](https://github.com/user-attachments/assets/f02e8f1d-d460-4ceb-931d-bd4794143668)

---

### 🔧 Design Decisions

* Each server has a unique ID and is linked to other tables like StreamingSessions, MaintenanceRecords, ErrorLogs, and NetworkUsage.  
* Timestamps are stored in 'YYYY-M-D' format for easier SQL import/export.  
* NetworkUsage table uses (ServerID, Timestamp) as a combined primary key.  
* MaintenanceRecords store technician names or note if the system did the job automatically.  

---

### 📥 Data Insertion Methods

We used three methods to insert data into the database:

1. Python scripts that generate SQL INSERT statements.  
2. Mockaroo Website.  
3. GenerateData website.  

![image](https://github.com/user-attachments/assets/0555f9a3-634f-4a23-b790-3bfef572d840)

---

### 💾 Backup and Restore

To protect our data, we demonstrated backup and restore operations:

* **Backup:** We exported the database using SQL dump inside Docker.  
* **Restore:** We used the SQL file to re-import the data.  

---

✅ End of Phase A Report

---

# Phase B: Queries and Constraints

## Overview

In this phase, we tested our database by writing and executing SQL queries. We also introduced constraints using ALTER TABLE, and demonstrated the use of transaction commands like ROLLBACK and COMMIT. Some modifications to the schema were made as needed for query logic, using ALTER TABLE—these changes do not require an update to the ERD.

## 1️⃣ SELECT Queries

We wrote 8 non-trivial SELECT queries that combine data from multiple tables and include filtering, aggregation, date operations, and ordering.

Each query in this section includes:

📃 Query Description  
📸 Screenshot: Query execution in the SQL console + Query result (up to 5 rows, multi-column)  

Below are the queries used in this phase:

### Query 1: Data centers with active servers and average storage usage

📄 Description: Retrieves all data centers that currently have active servers, counts how many active servers each has, and calculates the average storage usage per server. Results are ordered from most to least loaded.  
👤 Target User: DevOps teams, infrastructure managers, and analysts monitoring server usage and planning capacity.  
🕒 When: Before system upgrades, during incident analysis, or for periodic reporting.

📸 Screenshot:  
![Q1](https://github.com/user-attachments/assets/5cff9f87-1d23-4423-a3a1-06bd564505e0)

### Query 2: Average latency and packet loss by device type

📄 Description: Calculates average session latency and packet loss by device type (e.g., phone, TV), based on session start/end data.  
👤 Target User: UX teams, product managers, and network engineers optimizing performance per platform.  
🕒 When: During streaming experience analysis or cross-platform performance reviews.

📸 Screenshot:  
![Q2](https://github.com/user-attachments/assets/f87732a8-bc03-4b01-b8cc-05f59cd31120)

### Query 3: Active servers with more than 100 sessions this week

📄 Description: Displays active servers that had over 100 sessions in the past 7 days.  
👤 Target User: Infrastructure managers and DevOps identifying heavy traffic and potential scaling needs.  
🕒 When: In weekly performance analysis or for proactive load management.

📸 Screenshot:  
![Q3](https://github.com/user-attachments/assets/3daf54cc-2297-452f-8ca8-14e24c00e4c3)

### Query 4: Critical errors on currently active servers

📄 Description: Lists serious errors that occurred on servers that are still active (i.e., not shut down).  
👤 Target User: NOC teams and infrastructure leads addressing critical ongoing issues.  
🕒 When: In real-time alerts or during incident post-mortems.

📸 Screenshot:  
![Q4](https://github.com/user-attachments/assets/cb9b8ae7-6736-4fec-84ed-34eab886f6c6)

### Query 5: Top 5 servers with most maintenance records in the last year

📄 Description: Identifies the five servers that have undergone the most maintenance actions in the past 12 months.  
👤 Target User: Infrastructure and asset managers reviewing long-term server reliability.  
🕒 When: For budgeting, equipment lifecycle planning, or replacement decisions.

📸 Screenshot:  
![Q5](https://github.com/user-attachments/assets/29c627ea-db91-4e88-ab19-f02344456b54)

### Query 6: Average daily incoming/outgoing traffic over the last month

📄 Description: Shows the daily average of inbound and outbound traffic per day in the last month.  
👤 Target User: Performance monitoring teams and analysts watching for unusual traffic spikes.  
🕒 When: During network diagnostics or usage pattern analysis.

📸 Screenshot:  
![Q6](https://github.com/user-attachments/assets/c2144f08-1dcb-4781-8411-600f717dc079)

### Query 7: Sessions with more than 3 buffering events by video quality

📄 Description: Analyzes which video qualities (e.g., 4K, HD) experience frequent buffering, by listing sessions with 3+ buffering events.  
👤 Target User: Streaming optimization teams focusing on encoding and quality-performance trade-offs.  
🕒 When: During codec upgrades, platform tuning, or device-specific testing.

📸 Screenshot:  
![Q7](https://github.com/user-attachments/assets/24d6279a-784c-4b3e-a1c6-0e5228185ac9)

### Query 8: Server resource summary by operational status

📄 Description: Aggregates the number of servers, memory, and storage capacity based on server status (active, offline, etc.).  
👤 Target User: Infrastructure and finance teams assessing utilized vs. idle resources.  
🕒 When: Before procurement or capacity forecasting.

📸 Screenshot:  
![Q8](https://github.com/user-attachments/assets/305c8958-39eb-4298-aa27-c961a356d54c)

## 2️⃣ DELETE and UPDATE Queries

We wrote 3 DELETE and 3 UPDATE queries.

For each, we provide:  
📃 Query description  
📸 Screenshot 1: Table before the update/delete  
📸 Screenshot 2: Query execution + Table after the update/delete

### 2.1 UPDATE Queries

#### 🔄 Update Query 1: Update Server Status After Maintenance

SQL Purpose: Change server status from “Decommissioned” to “Active”.  
Why It's Needed: To mark the server as available after successful maintenance.  
Who Uses It: DevOps or infrastructure engineers.  
When: Right after server health verification.

📸 Screenshot before update:  
![U1-before](https://github.com/user-attachments/assets/9ea343f8-f77e-4e30-9483-6d9d3e8a5c5b)

📸 Screenshot after update:  
![U1-after](https://github.com/user-attachments/assets/f3240507-de21-4936-b4ac-0e473090523a)

#### 🔄 Update Query 2: Adjust Error Severity

SQL Purpose: Update severity of an error log entry.  
Why It's Needed: To reflect new understanding of the error’s impact.  
Who Uses It: Security teams or support engineers.  
When: During post-incident reviews.

📸 Screenshot before update:  
![U2-before (2)](https://github.com/user-attachments/assets/4e2417e1-4a05-4ef8-91b4-dfb9e8e71f1d)

📸 Screenshot after update:  
![U2-after](https://github.com/user-attachments/assets/502137eb-2cff-41bd-8281-2e6b1638fb55)

#### 🔄 Update Query 3: Correct Network Usage Values

SQL Purpose: Fix incorrect or missing traffic data in network logs.  
Why It's Needed: To ensure data accuracy for analysis and reporting.  
Who Uses It: Network engineers or QA testers.  
When: After detecting anomalies or during test simulations.

📸 Screenshot before update:  
![U3-before](https://github.com/user-attachments/assets/bd21e963-de0b-4ed1-a2d2-ecb3418be84c)

📸 Screenshot after update:  
![U3-after](https://github.com/user-attachments/assets/529836bf-19e0-468a-b48a-def80e8e8136)

### 2.2 DELETE Queries

#### 🗑️ Delete Query 1: Remove Old Maintenance Records

SQL Purpose: Delete maintenance records older than two years.  
Why It's Needed: To reduce database size and improve performance.  
Who Uses It: DBAs or automated cleanup processes.  
When: During routine maintenance or data migrations.

📸 Screenshot before delete:  
![d1-before](https://github.com/user-attachments/assets/1f8d4737-3d89-49a0-b536-41653c459586)

📸 Screenshot after delete:  
![d1-after](https://github.com/user-attachments/assets/a8c7409b-45d7-41e3-a917-3f74c66a863a)

#### 🗑️ Delete Query 2: Delete Zero Downtime Logs

SQL Purpose: Remove maintenance entries with 0 minutes downtime.  
Why It's Needed: These are likely errors or irrelevant entries.  
Who Uses It: DevOps, analysts, or data engineers.  
When: Before reporting or cleaning noisy data.

📸 Screenshot before delete:  
![d2-before](https://github.com/user-attachments/assets/ae2ded03-2131-4c12-bb8d-c01842095d79)

📸 Screenshot after delete:  
![d2-after](https://github.com/user-attachments/assets/1690de37-2ad3-44ce-b43d-90017e6c06a0)

#### 🗑️ Delete Query 3: Remove maintenance records of specific Server

SQL Purpose: Delete all maintenance history for server ID 101.
Why It's Needed: The server was decommissioned or used for testing.
Who Uses It: DBAs, infrastructure engineers, or QA testers.
When: After retiring the server or completing test cycles.

📸 Screenshot before delete:
![d3-before](https://github.com/user-attachments/assets/29c4149b-6502-4a6a-9e2c-bd9f2cbfeb6e)

📸 Screenshot after delete:
![d3-after](https://github.com/user-attachments/assets/3a500d0e-ad8b-4549-b4e3-a1e5b188c174)

## 3️⃣ Transaction Control (COMMIT & ROLLBACK)

We demonstrated the use of transactions in SQL:

### 🔄 ROLLBACK Demo

📸 Screenshot 1: Table before execution
![image](https://github.com/user-attachments/assets/dda4111e-d7fd-4f82-a643-9549cfb680ae)

📸 Screenshot 2: Table after update and rollback
![image](https://github.com/user-attachments/assets/af1becd2-a1ab-4a4a-9832-9b1f69fbb4f9)

### ✅ COMMIT Demo

📸 Screenshot 1: Table before execution
![image](https://github.com/user-attachments/assets/dda4111e-d7fd-4f82-a643-9549cfb680ae)

📸 Screenshot 2: Table after update and commit
![image](https://github.com/user-attachments/assets/742ac558-f5d7-4461-9ddc-594b93919dd4)

## 4️⃣ Constraints

We added 3 types of constraints (NOT NULL, CHECK, DEFAULT) using ALTER TABLE.

### 1. NOT NULL Constraint – Servers.Status

🧾 Description: We enforced that every server must have a defined status (e.g., Active, Inactive, UnderMaintenance) by disallowing NULLs in the Status column.

📸 ALTER TABLE command:
![image](https://github.com/user-attachments/assets/55552018-518e-4ea9-b381-6fa0e7a70438)

📸 Insert statement that violates the constraint + SQL error shown in console
![image](https://github.com/user-attachments/assets/87b27a2f-4eb1-46d6-bf12-a30b8b5e31fb)

### 2. CHECK Constraint – StreamingSessions.BufferEvents

🧾 Description: We enforced that every server must have a defined status (e.g., Active, Inactive, UnderMaintenance) by disallowing NULLs in the Status column.

📸 ALTER TABLE command:
![image](https://github.com/user-attachments/assets/55552018-518e-4ea9-b381-6fa0e7a70438)

📸 Insert statement that violates the constraint + SQL error shown in console
![image](https://github.com/user-attachments/assets/a934fbe1-c217-4d71-969c-cc169e4808de)

### 3. DEFAULT Constraint – ErrorLogs.Severity

🧾 Description: We set a default value of 'Medium' for the Severity column, so that if no severity is provided, 'Medium' is used automatically.

📸 ALTER TABLE command:
![image](https://github.com/user-attachments/assets/72a4015e-59a6-4aa6-9a94-d58d482fa947)

📸 Insert statement that violates the constraint + Affect from the constraint:
![image](https://github.com/user-attachments/assets/757ab89d-8f89-4ba5-ab4e-ac6c002f6742)

---

✅ End of Phase B Report

---

# Netflix Project: maintenance - Phase C Report

## 📑 Table of Contents

1. Integration Overview
2. Technical Support Database Analysis
3. Database Integration Process
4. Views Implementation
5. Summary

---

## 🔗 Integration Overview

In this phase, we integrated our streaming infrastructure database with the technical support department's database. This integration allows for a comprehensive view of both infrastructure maintenance and customer support operations, providing better insights into system performance and user experience correlation.

### Main Objectives:

* Analyze and integrate technical support database structure
* Merge databases while maintaining data integrity
* Create unified ERD and DSD diagrams
* Implement database views for enhanced querying capabilities

---

## 🔍 Technical Support Database Analysis

We received the backup file from the technical support department and analyzed its structure.

### DSD Extraction

📄 Description: We extracted the DSD (Data Structure Diagram) from the technical support backup file to understand their database schema.

📸 Screenshot:
![new\_dsd](https://github.com/user-attachments/assets/12d6bb20-e100-42b8-8c72-bcfde3e6de22)

### ERD Creation

📄 Description: Based on the DSD, we created an ERD (Entity Relationship Diagram) to visualize the relationships in the technical support database.

📸 Screenshot:
![new\_erd](https://github.com/user-attachments/assets/4776750d-9df8-44c4-9db8-ac7cf462519a)

---

## 🔧 Database Integration Process

We performed the integration between our streaming infrastructure database and the technical support database with the following modifications:

### Schema Changes Made:

#### 1. Table Renaming

**Change:** Renamed `support_agent` table to `worker` table
**Reason:** To create a more general representation of employees that can handle both maintenance and support tasks

#### 2. Attribute Removal

**Change:** Removed the `performedBy` attribute from the `MaintenanceRecord` table
**Reason:** This attribute was replaced with a proper foreign key relationship

#### 3. Relationship Creation

**Change:** Created a `performedBy` relationship between `MaintenanceRecord` and `worker` tables
**Reason:** To establish a proper many-to-one relationship between maintenance records and workers

### SQL Commands Used:

```sql
-- Rename table
ALTER TABLE support_agent RENAME TO worker;

-- Remove old attribute
ALTER TABLE MaintenanceRecord DROP COLUMN performedBy;

-- Add foreign key relationship
ALTER TABLE MaintenanceRecord ADD COLUMN workerID INT;
ALTER TABLE MaintenanceRecord ADD CONSTRAINT FK_MaintenanceRecord_Worker 
FOREIGN KEY (workerID) REFERENCES worker(workerID);
```

### Integrated ERD

📄 Description: The final ERD after integration, showing the unified database structure with both streaming infrastructure and technical support entities.

📸 Screenshot:
![shared\_erd](https://github.com/user-attachments/assets/224ea567-42a4-4ac0-8f04-6c17568e4849)

### Integrated DSD

📄 Description: The complete DSD after integration, detailing all tables, attributes, and relationships in the unified system.

📸 Screenshot:
![shared\_dsd](https://github.com/user-attachments/assets/8f1ae5e7-82ee-44d4-ac84-e87aa2b9e985)

---

## 👁️ Views Implementation

We created 2 database views to provide simplified access to complex data relationships and frequently used queries.

### View 1: Technical Support Tickets with User and Issue Type Information

📄 Description: This view combines data from Support\_Tickets, User, and Issue\_Types tables to provide a comprehensive overview of support tickets. It displays ticket details along with user information and issue classification, making it easier for support teams to understand the context of each ticket without writing complex joins.

📸 View Creation Screenshot:
![view1](https://github.com/user-attachments/assets/415879f1-bd83-46b0-ad4d-9d8c666ff501)

#### Query 1 on View 1: Filter Tickets by Issue Type

📄 Description: This query retrieves all tickets related to login problems, helping support teams quickly identify and prioritize authentication-related issues.

📸 Query Screenshot:
![שלהם1](https://github.com/user-attachments/assets/54174f23-f145-4266-a3ff-5b7f0088bdac)

#### Query 2 on View 1: User Ticket Volume Analysis

📄 Description: This query analyzes the number of tickets per user, helping identify users who might need additional support or training, and detecting potential system issues affecting specific users.

📸 Query Screenshot:
![שלהם2](https://github.com/user-attachments/assets/973a0ced-1a8a-475f-b7b7-525e494e68b3)

---

### View 2: Server Status and Maintenance Downtime Summary

📄 Description: This view integrates data from Servers, DataCenters, and MaintenanceRecords tables to provide a comprehensive overview of server infrastructure status and maintenance history. It helps infrastructure teams monitor server availability and track downtime patterns across different data centers.

📸 View Creation Screenshot:
![create שלנו](https://github.com/user-attachments/assets/e5e43e28-17c5-4b4b-b122-78760b887d34)

#### Query 1 on View 2: High Downtime Servers in Specific Regions

📄 Description: This query identifies servers in China that experienced significant downtime (over 60 minutes), helping regional infrastructure teams focus on problematic servers that may need attention or replacement.

📸 Query Screenshot:
![שלנו1](https://github.com/user-attachments/assets/c512c0f7-fb9d-4211-9be0-785a32b04da0)

#### Query 2 on View 2: Total Downtime Analysis by Data Center Country

📄 Description: This query aggregates total downtime by country, providing management with insights into regional infrastructure reliability and helping prioritize investment in infrastructure improvements.

📸 Query Screenshot:
![שלנו2](https://github.com/user-attachments/assets/8f24f7b2-364f-475c-a85c-3561df0390d8)

---

## 📊 Summary

### Integration Benefits:

* **Unified Data Model:** Combined infrastructure and support data for comprehensive analysis
* **Improved Relationships:** Better representation of worker roles across departments
* **Enhanced Querying:** Views provide simplified access to complex data relationships
* **Data Consistency:** Proper foreign key relationships ensure data integrity

### Technical Achievements:

* Successfully merged two independent database systems
* Maintained data integrity throughout the integration process
*


Created reusable views for common business queries

* Established proper relationships between previously isolated data sets

### Future Enhancements:

* Additional views can be created for specific business requirements
* Further normalization opportunities may be identified
* Performance optimization through indexing on frequently queried columns

---

✅ End of Phase C Report
