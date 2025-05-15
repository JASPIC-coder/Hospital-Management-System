
INSERT INTO doctors (first_name, last_name, specialty, phone_number, email) VALUES
('Jean', 'Niyonzima', 'Cardiology', '0788123456', 'niyonzimajean@hospital.rw'),
('Alice', 'Mukamana', 'Pediatrics', '0788456123', 'mukamanaalice@hospital.rw'),
('Eric', 'Habyarimana', 'Neurology', '0788678945', 'habyarimanaeric@hospital.rw'),
('Marie', 'Uwineza', 'Dermatology', '0788991122', 'uwinezamarie@hospital.rw'),
('David', 'Twagirayezu', 'Oncology', '0788234567', 'twagirayezudavid@hospital.rw'),
('Claudine', 'Nshimiyimana', 'Orthopedics', '0788345612', 'nshimiyimanaclaudine@hospital.rw'),
('Alex', 'Mugisha', 'Psychiatry', '0788456234', 'mugishaalex@hospitalrw');


INSERT INTO patients (first_name, last_name, date_of_birth, gender, phone_number, email) VALUES
('Patrick', 'Mutabazi', '1995-03-12', 'Male', '0789123456', 'mutabazipatrick@gmail.com'),
('Linda', 'Mutesi', '2002-06-18', 'Female', '0789456789', 'mutesilinda@gmail.com'),
('Emmanuel', 'Nkurunziza', '1988-11-02', 'Male', '0789345678', 'nkurunzizaemmanuel@gmail.com'),
('Aline', 'Uwera', '1990-01-25', 'Female', '0789567890', 'uweraaline@gmail.com'),
('John', 'Rugamba', '1999-07-30', 'Male', '0789678901', 'rugambajohn@gmail.com'),
('Diane', 'Iradukunda', '2001-04-15', 'Female', '0789789012', 'iradukundadiane@gmail.com'),
('Eric', 'Munyaneza', '1993-09-22', 'Male', '0789890123', 'munyanezaeric@gmail.com');


INSERT INTO appointments (doctor_id, patient_id, appointment_date, status) VALUES
(1, 1, '2025-05-20 10:00', 'Scheduled'),
(2, 2, '2025-05-21 11:00', 'Completed'),
(3, 3, '2025-05-22 09:00', 'Scheduled'),
(4, 4, '2025-05-23 15:00', 'Canceled'),
(5, 5, '2025-05-24 14:00', 'Scheduled'),
(6, 6, '2025-05-25 13:00', 'Completed'),
(7, 7, '2025-05-26 12:00', 'Scheduled');


INSERT INTO medical_records (patient_id, diagnosis, treatment, doctor_id) VALUES
(1, 'Hypertension', 'Lifestyle change, medication', 1),
(2, 'Flu', 'Rest and fluids', 2),
(3, 'Epilepsy', 'Medication, regular checkups', 3),
(4, 'Skin Allergy', 'Creams and antihistamines', 4),
(5, 'Cancer', 'Chemotherapy', 5),
(6, 'Broken leg', 'Casting and therapy', 6),
(7, 'Anxiety', 'Counseling, medication', 7);


INSERT INTO doctor_patient (doctor_id, patient_id) VALUES
(1, 1), (1, 3), (2, 2), (2, 6), (3, 4), (3, 5), (4, 2),
(5, 7), (6, 1), (6, 5), (7, 4), (7, 6);
