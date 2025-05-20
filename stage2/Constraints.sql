-- 1️⃣ אילוץ NOT NULL על עמודת Status בטבלת Servers
ALTER TABLE Servers
ALTER COLUMN Status SET NOT NULL;



-- 2️⃣ אילוץ CHECK על עמודת BufferEvents בטבלת StreamingSessions – לא תיתכן כמות שלילית
ALTER TABLE StreamingSessions
ADD CONSTRAINT chk_buffer_events_non_negative
CHECK (BufferEvents >= 0);


-- 3️⃣ אילוץ DEFAULT על עמודת Severity בטבלת ErrorLogs – אם לא צוין ערך, ברירת מחדל תהיה 'Medium'
ALTER TABLE ErrorLogs
ALTER COLUMN Severity SET DEFAULT 'Medium';
