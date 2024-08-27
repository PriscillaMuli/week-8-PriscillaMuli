SELECT HF.Name, HF.Capacity, 
       AVG(PR.IncidenceRate) AS AvgIncidenceRate
FROM HealthcareFacilities HF
JOIN PatientRecords PR ON HF.FacilityID = PR.FacilityID
GROUP BY HF.Name, HF.Capacity
ORDER BY AvgIncidenceRate DESC;
