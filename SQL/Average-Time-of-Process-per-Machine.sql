SELECT Activity1.machine_id, ROUND(AVG(Activity2.timestamp - Activity1.timestamp),3) AS processing_time
FROM Activity Activity1
JOIN Activity Activity2
ON Activity1.machine_id = Activity2.machine_id AND Activity1.process_id = Activity2.process_id
AND Activity1.activity_type="start" AND Activity2.activity_type="end"
GROUP BY Activity1.machine_id;
