SELECT PR.*
FROM PatientRecords PR
JOIN HealthcareFacilities HF ON PR.FacilityID = HF.FacilityID
WHERE HF.Name = 'Eastside Medical Center' 
AND PR.Date BETWEEN '2024-07-20' AND '2024-07-25';
