-- Laboratorians
INSERT INTO Laboratorian (Name, Phone, Address) VALUES
('Dr. Ayman', '0123456789', 'Cairo'),
('Dr. Sara', '0111111111', 'Alexandria'),
('Dr. Hossam', '0101112222', 'Giza'),
('Dr. Mona', '0121234567', 'Cairo'),
('Dr. Nabil', '0155558888', 'Aswan'),
('Dr. Dina', '0109991111', 'Luxor'),
('Dr. Osama', '0113337777', 'Mansoura'),
('Dr. Laila', '0123456700', 'Zagazig'),
('Dr. Kareem', '0100101010', 'Suez'),
('Dr. Nada', '0102020202', 'Tanta');

-- Patients
INSERT INTO Patient (Name, Phone, Address, BirthDate, Job) VALUES
('Sohaila', '0100000000', 'Giza', '2001-03-10', 'Engineer'),
('Ahmed Tarek', '0122222222', 'Tanta', '1995-06-15', 'Teacher'),
('Yasmine Ali', '0118888888', 'Cairo', '1992-01-01', 'Pharmacist'),
('Mohamed Adel', '0103030303', 'Mansoura', '1988-12-12', 'Driver'),
('Fatma Gamal', '0151112222', 'Suez', '2000-07-20', 'Nurse'),
('Omar Samir', '0104545454', 'Luxor', '1993-04-04', 'Engineer'),
('Nourhan Fathy', '0116669999', 'Giza', '1998-02-28', 'Student'),
('Tamer ElShahat', '0127894561', 'Alexandria', '1987-08-30', 'Manager'),
('Salma Yehia', '0101478523', 'Aswan', '2002-09-09', 'Intern'),
('Hany Magdy', '0113698521', 'Cairo', '1990-06-16', 'Technician');

-- Components
INSERT INTO Component (Name, AvailableQuantity, MinimumQuantity) VALUES
('Hemoglobin', 50, 20),
('WBC', 5, 10),
('Glucose', 30, 25),
('Cholesterol', 40, 15),
('Platelets', 60, 30),
('Creatinine', 20, 10),
('Sodium', 25, 15),
('Potassium', 18, 12),
('Calcium', 12, 10),
('Iron', 8, 10);

-- Medical Tests
INSERT INTO MedicalTest (Name, Price) VALUES
('CBC', 200),
('Blood Sugar', 150),
('Lipid Profile', 300),
('Kidney Function', 250),
('Electrolytes', 220),
('Thyroid Panel', 270),
('Liver Function', 320),
('Iron Panel', 180),
('Calcium Test', 140),
('CRP Test', 160);