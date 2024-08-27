SELECT HF.Name, PR.DiseaseType, COUNT(*) AS DiseaseCount
FROM PatientRecords PR
JOIN HealthcareFacilities HF ON PR.FacilityID = HF.FacilityID
GROUP BY HF.Name, PR.DiseaseType
ORDER BY HF.Name, DiseaseCount DESC;
