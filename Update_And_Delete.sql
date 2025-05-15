
UPDATE appointments
SET status = 'Completed'
WHERE id = 1;


DELETE FROM patients
WHERE id = 4;



-- Retrieve all patients who have appointments with a specific doctor (e.g., doctor_id = 1)
SELECT p.*
FROM patients p
JOIN appointments a ON p.id = a.patient_id
WHERE a.doctor_id = 1;

-- List all medical records for a specific patient (e.g., patient_id = 2)
SELECT * FROM medical_records WHERE patient_id = 2;

-- Total number of appointments per doctor
SELECT d.first_name, d.last_name, COUNT(a.id) AS total_appointments
FROM doctors d
LEFT JOIN appointments a ON d.id = a.doctor_id
GROUP BY d.id;

-- Doctors and number of patients they are attending to
SELECT d.first_name, d.last_name, COUNT(DISTINCT dp.patient_id) AS total_patients
FROM doctors d
JOIN doctor_patient dp ON d.id = dp.doctor_id
GROUP BY d.id;



--  Doctors with more than 5 patients
SELECT d.first_name, d.last_name, COUNT(dp.patient_id) AS patient_count
FROM doctors d
JOIN doctor_patient dp ON d.id = dp.doctor_id
GROUP BY d.id
HAVING COUNT(dp.patient_id) > 5;

-- Patients diagnosed more than once
SELECT p.first_name, p.last_name, COUNT(mr.id) AS diagnosis_count
FROM patients p
JOIN medical_records mr ON p.id = mr.patient_id
GROUP BY p.id
HAVING COUNT(mr.id) > 1;

-- Appointments scheduled per month
SELECT DATE_TRUNC('month', appointment_date) AS month, COUNT(*) AS total_appointments
FROM appointments
GROUP BY month
ORDER BY month;


