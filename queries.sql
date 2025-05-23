-- Query 1: Patients who performed CBC test in the last year
SELECT DISTINCT P.Name AS PatientName
FROM Patient P
JOIN TestResult R ON P.PatientID = R.PatientID
JOIN MedicalTest T ON R.TestID = T.TestID
WHERE T.Name = 'CBC' AND R.TestDate >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

-- Query 2: Components with quantity less than minimum
SELECT Name AS ComponentName
FROM Component
WHERE AvailableQuantity < MinimumQuantity;

-- Query 3: Total money paid by patient with ID = 1 in the last 3 years
SELECT SUM(T.Price) AS TotalPaid
FROM TestResult R
JOIN MedicalTest T ON R.TestID = T.TestID
WHERE R.PatientID = 1 AND R.TestDate >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);