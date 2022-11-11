INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Tallinn');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Tartu');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Pärnu');
INSERT INTO public.city (id, name) VALUES (DEFAULT, 'Viljandi');

INSERT INTO public.atm (id, serial_number) VALUES (DEFAULT, 'AAA123');
INSERT INTO public.atm (id, serial_number) VALUES (DEFAULT, 'BBB123');
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