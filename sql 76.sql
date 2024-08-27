SELECT DiseaseType, COUNT(*) AS CasesCount
FROM PatientRecords
GROUP BY DiseaseType
ORDER BY CasesCount DESC;
