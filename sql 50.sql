CREATE TABLE MedicalSupplies (
    SupplyID INT PRIMARY KEY,
    Type VARCHAR(100),
    Quantity INT,
    DistributionDate DATE,
    FacilityID INT,
    FOREIGN KEY (FacilityID) REFERENCES HealthcareFacilities(FacilityID)
);