--technical support View

CREATE VIEW vw_TicketsWithUserAndIssueType AS
SELECT 
    st.ticket_id,
    st.issue_description,
    st.ticket_date,
    u.username,
    u.email,
    it.issue_type_name,
    it.priority
FROM 
    Support_Tickets st
    INNER JOIN "User" u ON st.user_id = u.user_id
    INNER JOIN Issue_Types it ON st.issue_type_id = it.issue_type_id;
	
SELECT *
FROM vw_TicketsWithUserAndIssueType
WHERE issue_type_name = 'Login Problems';


SELECT username, COUNT(ticket_id) AS num_tickets
FROM vw_TicketsWithUserAndIssueType
GROUP BY username
ORDER BY num_tickets DESC;

--Maintaince View
CREATE VIEW vw_ServerStatusAndDowntime AS
SELECT
    s.ServerID,
    s.Location,
    s.Status AS ServerStatus,
    mr.DatePerformed,
    mr.MaintenanceType,
    mr.DowntimeMinutes
FROM
    Servers s
    LEFT JOIN MaintenanceRecords mr ON s.ServerID = mr.ServerID;


SELECT *
FROM vw_ServerStatusAndDowntime
WHERE location = 'China'
  AND DowntimeMinutes > 60;

  
SELECT ServerID, SUM(DowntimeMinutes) AS TotalDowntime
FROM vw_ServerStatusAndDowntime
GROUP BY ServerID
ORDER BY TotalDowntime DESC;
