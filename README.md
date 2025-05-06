# MaintenanceDB_1151_0199

# Netflix Project: maintenance - Phase A Report

## 👥 Team:

Yair Levi - 213200199
Yovel Yehoshua -213571151

## 🖥️ System Name:

* Streaming Infrastructure maintenance Management System


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

✅ End of Report
