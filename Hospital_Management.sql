create DATABASE HOSPITAL;
USE HOSPITAL;
#1. Display all patient records
SELECT *FROM hospital_management_dataset;
#2. Display patients sorted by age (highest to lowest)
SELECT PatientName, Age
FROM hospital_management_dataset
ORDER BY Age DESC;
#3 Find the number of patients in each gender
SELECT Gender, COUNT(*) AS TotalPatients
FROM hospital_management_dataset
GROUP BY Gender;
#4 Count patients diagonosis-wise.
SELECT Diagnosis, COUNT(*) AS TotalPatients
FROM hospital_management_dataset
GROUP BY Diagnosis;
#5Find female patients below 25 years.
SELECT *
FROM hospital_management_dataset
WHERE Gender='F' AND Age<25;
#6 Find the oldest patient.
SELECT *
FROM hospital_management_dataset
WHERE Age = (
    SELECT MAX(Age)
    FROM hospital_management_dataset
);
#7 Find patients admitted to the Cardiology department.
SELECT *
FROM hospital_management_dataset
WHERE Department='Cardiology';
 #8 Find male patients above 60 years.
 SELECT *
FROM hospital_management_dataset
WHERE Gender='M' AND Age>60;
