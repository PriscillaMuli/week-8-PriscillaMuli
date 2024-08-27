SELECT ProgramName, SUM(ParticipantCount) AS TotalParticipants
FROM HealthEducationPrograms
GROUP BY ProgramName
ORDER BY TotalParticipants DESC;
