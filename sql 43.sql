CREATE TABLE HealthcareFacilities (
    FacilityID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Capacity INT NOT NULL,
    ServicesProvided TEXT
);
