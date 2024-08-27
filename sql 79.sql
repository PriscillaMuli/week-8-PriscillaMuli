SELECT DATE_FORMAT(DistributionDate, '%Y-%m') AS Month, 
       SUM(Quantity) AS TotalSuppliesDistributed
FROM MedicalSupplies
GROUP BY Month
ORDER BY Month ASC;
