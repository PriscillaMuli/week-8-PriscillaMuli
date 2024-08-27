SELECT HF.Name, SUM(MS.Quantity) AS TotalSupplies
FROM HealthcareFacilities HF
JOIN MedicalSupplies MS ON HF.FacilityID = MS.FacilityID
GROUP BY HF.Name;
