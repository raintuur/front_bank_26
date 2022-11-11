
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Tallinn');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Tartu');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Viljandi');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Pärnu');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Rakvere');

INSERT INTO public.location (id, name, city_id, address, longitude, latitude) VALUES (DEFAULT, 'Tondi Selver', 1, 'Tondi 1', null, null);
INSERT INTO public.location (id, name, city_id, address, longitude, latitude) VALUES (DEFAULT, 'Järve Selver', 1, 'Pärnu mnt 289', null, null);
INSERT INTO public.location (id, name, city_id, address, longitude, latitude) VALUES (DEFAULT, 'Veeriku Selver', 1, 'Veeriku 7', null, null);
INSERT INTO public.location (id, name, city_id, address, longitude, latitude) VALUES (DEFAULT, 'Port Artur Selver', 4, 'Artur Rinne 2', null, null);
INSERT INTO public.location (id, name, city_id, address, longitude, latitude) VALUES (DEFAULT, 'Uku Keskus', 3, 'Pootsmani 5', null, null);

INSERT INTO public.atm (id, serial_number, location_id ) VALUES (DEFAULT, 'AAA123',1);
INSERT INTO public.atm (id, serial_number, location_id) VALUES (DEFAULT, 'BBB123', 2);
INSERT INTO public.atm (id, serial_number, location_id) VALUES (DEFAULT, 'CCC123', 3);

INSERT INTO public.atm_service (id, service_name) VALUES (DEFAULT, 'raha välja');
INSERT INTO public.atm_service (id, service_name) VALUES (DEFAULT, 'raha sisse');
INSERT INTO public.atm_service (id, service_name) VALUES (DEFAULT, 'maksed');

INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 1, 1);
INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 1, 2);
INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 1, 3);
INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 2, 1);
INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 2, 2);
INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 3, 1);
INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 3, 2);

