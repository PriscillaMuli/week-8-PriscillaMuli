CREATE TABLE MedicalSupplies (
    SupplyID INT PRIMARY KEY AUTO_INCREMENT,
    Type VARCHAR(255) NOT NULL,
    Quantity INT NOT NULL,
    DistributionDate DATE NOT NULL,
    FacilityID INT,
    FOREIGN KEY (FacilityID) REFERENCES HealthcareFacilities(FacilityID)
);
