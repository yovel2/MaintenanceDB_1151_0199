# MaintenanceDB_1151_0199

# 👥 Team:

Yair Levi - 213200199
Yovel Yehoshua -213571151

# 🖥️ System Name:

* Streaming Infrastructure maintenance Management System

## Netflix Project: maintenance - Phase A Report

## 📑 Table of Contents

1. Introduction
2. ERD & DSD Diagrams
3. Design Decisions
4. Data Insertion Methods (Screenshots)
5. Backup and Restore (Screenshots)

---

## 📘 Introduction

This project manages data for a global video streaming company that runs thousands of servers and data centers across the world. The system stores data about servers, streaming sessions, maintenance logs, traffic usage, and error logs. Our main goal is to track server performance, handle problems, and analyze streaming quality for users.

### Main Features:

* Save and track details of servers and data centers.
* Store information about user streaming sessions.
* Monitor network traffic like download/upload speeds and latency.
* Record maintenance activity for each server.
* Log errors and their effects on users.

---

## 📊 ERD & DSD

ERD:
![erd](https://github.com/user-attachments/assets/01a60840-4e7c-40f5-934d-bd70fdb86ff6)

DSD:
![dsd](https://github.com/user-attachments/assets/f02e8f1d-d460-4ceb-931d-bd4794143668)


---

## 🔧 Design Decisions

* Each server has a unique ID and is linked to other tables like StreamingSessions, MaintenanceRecords, ErrorLogs, and NetworkUsage.
* Timestamps are stored in 'YYYY-M-D' format for easier SQL import/export.
* NetworkUsage table uses (ServerID, Timestamp) as a combined primary key.
* MaintenanceRecords store technician names or note if the system did the job automatically.

---

## 📥 Data Insertion Methods

We used three methods to insert data into the database:

1. Python scripts that generate SQL INSERT statements.
2. Mockaroo Website.
3. GenerateData website. 
![image](https://github.com/user-attachments/assets/0555f9a3-634f-4a23-b790-3bfef572d840)

---

## 💾 Backup and Restore

To protect our data, we demonstrated backup and restore operations:

* **Backup:** We exported the database using SQL dump inside Docker.

* **Restore:** We used the SQL file to re-import the data.


---

✅ End of Phase A Report



## Phase B: Queries and Constraints
## Overview
In this phase, we tested our database by writing and executing SQL queries. We also introduced constraints using ALTER TABLE, and demonstrated the use of transaction commands like ROLLBACK and COMMIT. Some modifications to the schema were made as needed for query logic, using ALTER TABLE—these changes do not require an update to the ERD.

## 1️⃣ SELECT Queries
We wrote 8 non-trivial SELECT queries that combine data from multiple tables and include filtering, aggregation, date operations, and ordering.

Each query in this section includes:

📃 Query Description
📸 Screenshot 1: Query execution in the SQL console
📸 Screenshot 2: Query result (up to 5 rows, multi-column)

Below are the queries used in this phase:

# Query 1: View server maintenance history by location and technician
📄 Description: הצגת תחזוקה של שרתים לפי מיקום וטכנאי.
👤 Target User: System Admin checking who performed maintenance at each site.

📸 Screenshot 1: SQL query execution
📸 Screenshot 2: First 5 rows of the result

# Query 2: View total download/upload per server
📄 Description: סיכום תעבורה של העלאה/הורדה פר שרת
👤 Target User: Network Engineer analyzing bandwidth usage

📸 Screenshot 1
📸 Screenshot 2

# Query 3: View recent errors and the users affected
📄 Description: שגיאות שהתרחשו והמשתמשים שנפגעו מהן
👤 Target User: Support team tracking issues and affected sessions

📸 Screenshot 1
📸 Screenshot 2

# Query 4: Average latency by location and server
📄 Description: חישוב ממוצע זמן תגובה (latency) לפי מיקום
👤 Target User: Network Analyst comparing server performance by geography

📸 Screenshot 1
📸 Screenshot 2

# Query 5: Number of streaming sessions per day
📄 Description: כמות צפיות יומית
👤 Target User: Business team for viewership statistics

📸 Screenshot 1
📸 Screenshot 2

# Query 6: List servers that had maintenance in the past month
📄 Description: שרתים שעברו תחזוקה ב־30 הימים האחרונים
👤 Target User: Operations team checking recent activities

📸 Screenshot 1
📸 Screenshot 2

# Query 7: Top 3 servers with the most errors in the last week
📄 Description: שלושת השרתים עם הכי הרבה שגיאות בשבוע האחרון
👤 Target User: DevOps team monitoring error trends

📸 Screenshot 1
📸 Screenshot 2

# Query 8: Average session duration per server
📄 Description: משך צפייה ממוצע לפי שרת
👤 Target User: Performance team measuring efficiency

📸 Screenshot 1
📸 Screenshot 2

## 2️⃣ DELETE and UPDATE Queries
We wrote 3 DELETE and 3 UPDATE queries.

For each, we provide:
📃 Query description 
📸 Screenshot 1: Query execution
📸 Screenshot 2: Table before the update/delete
📸 Screenshot 3: Table after the update/delete

# 2.1 UPDATE Queries
# Update Query 1: Mark Automatic Maintenance
SQL Purpose: Change the technician name to “AUTO” for maintenance tasks done by the system.
Why It's Needed: To maintain data consistency and clearly mark records not tied to a specific technician. Used during audits or system cleanups.

📸 Screenshots:
Table before update

Execution of the query

Table after update

# Update Query 2: Set Latency to NULL for Failed Connections
SQL Purpose: Set latency to NULL where the latency is recorded as -1 (indicating a failed ping).
Why It's Needed: Ensures bad data doesn’t skew analytics. Analysts or data engineers run this regularly for data cleaning.

📸 Screenshots:
Table before update

Execution of the query

Table after update

# 2.2 DELETE Queries
# Delete Query 1: Remove Old Error Logs
SQL Purpose: Delete error logs older than one year.

Why It's Needed: Reduces database size and keeps recent, relevant errors. Run monthly by DBAs or cron jobs.

📸 Screenshots:
Table before delete

Execution of the query

Table after delete

# Delete Query 2: Delete Test Sessions from QA Team
SQL Purpose: Remove sessions where the UserID = 'test_user'.
Why It's Needed:
Testing data should not affect production analytics. Often executed after QA testing rounds.

📸 Screenshots:

Table before delete

Execution of the query

Table after delete


3️⃣ Transaction Control (COMMIT & ROLLBACK)
We demonstrated the use of transactions in SQL:

🔄 ROLLBACK Demo
Step 1: Execute an UPDATE query

Step 2: Show table after update

Step 3: Run ROLLBACK

Step 4: Show table reverted to original state

📸 Screenshot 1: Query execution
📸 Screenshot 2: Table after update
📸 Screenshot 3: Table after rollback

✅ COMMIT Demo
Step 1: Execute an UPDATE query

Step 2: Show table after update

Step 3: Run COMMIT

Step 4: Confirm table remains updated

📸 Screenshot 1: Query execution
📸 Screenshot 2: Table after update
📸 Screenshot 3: Table after commit

4️⃣ Constraints
We added at least 3 types of constraints (NOT NULL, CHECK, DEFAULT) using ALTER TABLE.

For each:

🧾 Describe the constraint added

📸 Screenshot 1: ALTER TABLE command

📸 Screenshot 2: Insert statement that violates the constraint

📸 Screenshot 3: SQL error shown in console


