ALTER TABLE Vehicles
ADD CONSTRAINT FK_VO
FOREIGN KEY (ownerState, ownerLicenseID) REFERENCES Owners(ownerState, ownerLicenseID)
ON UPDATE CASCADE;

ALTER TABLE Photos
ADD CONSTRAINT FK_PV
FOREIGN KEY (vehicleState, vehicleLicensePlate) REFERENCES Vehicles(vehicleState, vehicleLicensePlate)
ON UPDATE SET NULL
ON DELETE CASCADE;

ALTER TABLE Photos
ADD CONSTRAINT FK_PC
FOREIGN KEY (cameraID) REFERENCES Cameras(cameraID)
ON DELETE CASCADE;