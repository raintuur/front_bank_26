INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Tallinn');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Tartu');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Pärnu');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Viljandi');

INSERT INTO public.location (id, city_id, name, address, longitude, latitude) VALUES (DEFAULT, 1, 'Tondi Selver', 'Tondi 1', null, null);
INSERT INTO public.location (id, city_id, name, address, longitude, latitude) VALUES (DEFAULT, 1, 'Järve Selver', 'Järve 22', null, null);
INSERT INTO public.location (id, city_id, name, address, longitude, latitude) VALUES (DEFAULT, 2, 'Veeriku Selver', 'Veeriku 7', null, null);
INSERT INTO public.location (id, city_id, name, address, longitude, latitude) VALUES (DEFAULT, 3, 'Port Arturi Selver', 'Artur Rinne 2', null, null);


INSERT INTO public.atm      (id, serial_number, location_id) VALUES   (DEFAULT, 'AAA123', 4);
INSERT INTO public.atm (id, serial_number) VALUES (DEFAULT, 'BBB123',);
INSERT INTO public.atm (id, serial_number) VALUES (DEFAULT, 'CCC123');

INSERT INTO public.atm_service (id, name) VALUES (DEFAULT, 'raha välja');
INSERT INTO public.atm_service (id, name) VALUES (DEFAULT, 'raha sisse');
INSERT INTO public.atm_service (id, name) VALUES (DEFAULT, 'maksed');

INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 1, 1);
INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 1, 2);
INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 1, 3);
INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 2, 1);
INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 2, 2);
INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 3, 1);
INSERT INTO public.atm_service_relation (id, atm_id, atm_service_id) VALUES (DEFAULT, 3, 2);
