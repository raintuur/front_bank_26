-- todo:
--  C - Create
--  R - Read
--  U - Update
--  D - Delete


-- todo:
--  C - INSERT
--  R - SELECT
--  U - UPDATE
--  D - DELETE

SELECT atm.serial_number, l.name, atm.status
FROM atm
         JOIN location l ON l.id = atm.location_id
         JOIN city c ON c.id = l.city_id
         JOIN atm_service_relation asr ON atm.id = asr.atm_id
         JOIN atm_service "as" ON "as".id = asr.atm_service_id
WHERE c.name = 'Tallinn'
  AND "as".name = 'maksed';
