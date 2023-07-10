INSERT INTO Vehicles(vehicleState, vehicleLicensePlate, ownerState, ownerLicenseID, year, color)
VALUES ('CA', '3XQZ123', 'AL', 'N149234', '2000', 'BL');

INSERT INTO Photos
VALUES ('901','ME','7UQW177','2022-12-01 16:05:01');

INSERT INTO Photos
VALUES ('700','CA','7UVW177','2022-12-01 16:20:01');


UPDATE Exits
SET mileMarker = '9'
Where exitNum = '1';

UPDATE Exits
SET mileMarker = '-1'
Where exitNum = '1';


UPDATE Interchanges
SET highwayNum1 = '13', highwayNum2 = '17'
Where exitNum1 = '1';

UPDATE Interchanges
SET highwayNum1 = '11', highwayNum2 = '10'
Where exitNum1 = '1';


UPDATE Owners
SET startDate = NULL, expirationDate = NULL
Where ownerLicenseID = 'N179244';

UPDATE Owners
SET startDate = NULL, expirationDate = '2022-01-09'
Where ownerLicenseID = 'N179244';