START TRANSACTION;

UPDATE Photos p
SET vehicleLicensePlate = pc.vehicleLicensePlate, vehicleState = 'CA'
FROM PhotoChanges pc
WHERE pc.cameraID = p.cameraID AND
    pc.photoTimestamp = p.photoTimestamp;

INSERT INTO Photos(cameraID,  vehicleLicensePlate, photoTimestamp) --cast type?
    SELECT DISTINCT pc.cameraID, pc.vehicleLicensePlate, pc.photoTimestamp
    FROM PhotoChanges pc
    WHERE (pc.cameraID,pc.photoTimestamp) NOT IN (SELECT cameraID,photoTimestamp FROM Photos)
    
;
    

COMMIT;