import random
from faker import Faker
from datetime import timedelta

fake = Faker()

# Maintenance types and sample notes
maintenance_types = ["Software Update", "Hardware Replacement", "Cleaning"]
sample_notes = [
    "",
    "Routine check completed.",
    "Minor issues found and resolved.",
    "No issues reported.",
    "Performed as scheduled."
]

# Function to generate a single SQL insert statement
def generate_insert(record_id):
    server_id = random.randint(1, 400)
    maint_type = random.choice(maintenance_types)
    performed_by = random.choice([fake.name(), "Automated System"])
    date_performed = fake.date_between(start_date='-60d', end_date='today')
    date_str = f"{date_performed.year}-{date_performed.month}-{date_performed.day}"  # e.g., 2025-5-6
    downtime = random.randint(5, 240)
    notes = random.choice(sample_notes).replace("'", "''")  # escape single quotes

    return f"INSERT INTO MaintenanceRecords (RecordID, ServerID, MaintenanceType, PerformedBy, DatePerformed, DowntimeMinutes, Notes) VALUES ({record_id}, {server_id}, '{maint_type}', '{performed_by}', '{date_str}', {downtime}, '{notes}');"

# Generate SQL statements
sql_lines = [generate_insert(i) for i in range(1, 401)]

# Save to file
with open("insert_maintenance_records.sql", "w", encoding="utf-8") as f:
    f.write("\n".join(sql_lines))

print("SQL file created: insert_maintenance_records.sql")
