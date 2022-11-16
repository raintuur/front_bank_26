INSERT INTO public.role (id, type) VALUES (DEFAULT, 'admin');
INSERT INTO public.role (id, type) VALUES (DEFAULT, 'user');

INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Tallinn');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Tartu');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Viljandi');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Pärnu');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Rakvere');

INSERT INTO public.location (id, name, status, city_id) VALUES (DEFAULT, 'Tondi Selver', DEFAULT, 1);
INSERT INTO public.location (id, name, status, city_id) VALUES (DEFAULT, 'Järve Selver', DEFAULT, 1);
INSERT INTO public.location (id, name, status, city_id) VALUES (DEFAULT, 'Veeriku Selver', DEFAULT, 2);
INSERT INTO public.location (id, name, status, city_id) VALUES (DEFAULT, 'Uku Keskus', DEFAULT, 3);

INSERT INTO public.atm (id, serial_number, location_id, status ) VALUES (DEFAULT, 'AAA123', 1, DEFAULT);
INSERT INTO public.atm (id, serial_number, location_id, status) VALUES (DEFAULT, 'BBB123', 2, DEFAULT);
INSERT INTO public.atm (id, serial_number, location_id, status) VALUES (DEFAULT, 'CCC123', 3, DEFAULT);

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

INSERT INTO "user" ( username, password, role_id) VALUES ('rain','123',2);

INSERT INTO customer (first_name, last_name, personal_code, user_id) VALUES ('Rain','Tüür','38512120285',1);

