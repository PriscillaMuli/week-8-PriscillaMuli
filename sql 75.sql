SELECT HF.Name, SUM(MS.Quantity) AS TotalSuppliesDelivered
FROM HealthcareFacilities HF
JOIN MedicalSupplies MS ON HF.FacilityID = MS.FacilityID
GROUP BY HF.Name
ORDER BY TotalSuppliesDelivered DESC;
