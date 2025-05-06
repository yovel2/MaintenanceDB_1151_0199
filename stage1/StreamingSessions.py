import random
from faker import Faker
from datetime import timedelta

# Initialize Faker
fake = Faker()

# Define options
device_types = ["Phone", "TV", "Computer", "Tablet", "Console"]
video_qualities = ["SD", "HD", "4K"]

# Function to generate a single INSERT statement
def generate_streaming_insert(session_id):
    user_id = random.randint(1, 1000)
    server_id = random.randint(1, 400)
    start_time = fake.date_time_between(start_date='-30d', end_date='now')
    duration = timedelta(minutes=random.randint(5, 180))
    end_time = start_time + duration

    # Format dates as 'YYYY-M-D'
    start_str = f"{start_time.year}-{start_time.month}-{start_time.day}"
    end_str = f"{end_time.year}-{end_time.month}-{end_time.day}"

    device = random.choice(device_types)
    quality = random.choice(video_qualities)
    buffer_events = random.randint(0, 10)

    return (
        f"INSERT INTO streamingsessions (SessionID, UserID, ServerID, StartTime, EndTime, DeviceType, VideoQuality, BufferEvents) "
        f"VALUES ({session_id}, {user_id}, {server_id}, '{start_str}', '{end_str}', '{device}', '{quality}', {buffer_events});"
    )

# Generate all INSERT statements
sql_lines = [generate_streaming_insert(i) for i in range(1, 401)]

# Write to file
with open("insert_streaming_sessions.sql", "w", encoding="utf-8") as f:
    f.write("\n".join(sql_lines))

print("File created: insert_streaming_sessions.sql")
