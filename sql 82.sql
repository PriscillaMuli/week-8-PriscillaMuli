SELECT HF.Name, SUM(MS.Quantity) AS TotalSuppliesDelivered,
       (SELECT COUNT(*) FROM PatientRecords WHERE FacilityID = HF.FacilityID) AS TotalPatientsTreated,
       (SUM(MS.Quantity) / (SELECT COUNT(*) FROM PatientRecords WHERE FacilityID = HF.FacilityID)) AS SuppliesPerPatient
FROM HealthcareFacilities HF
JOIN MedicalSupplies MS ON HF.FacilityID = MS.FacilityID
GROUP BY HF.Name
ORDER BY SuppliesPerPatient ASC;
