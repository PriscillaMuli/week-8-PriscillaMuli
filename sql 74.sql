SELECT Name, Capacity, 
       (SELECT COUNT(*) FROM PatientRecords WHERE FacilityID = HF.FacilityID) AS CurrentPatientCount,
       (SELECT COUNT(*) FROM PatientRecords WHERE FacilityID = HF.FacilityID) / Capacity * 100 AS OccupancyRate
FROM HealthcareFacilities HF
ORDER BY OccupancyRate DESC;
