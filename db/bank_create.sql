-- Kustutab public schema (mis põhimõtteliselt kustutab kõik tabelid)
DROP SCHEMA public CASCADE;
-- Loob uue public schema vajalikud õigused
CREATE SCHEMA public
-- taastab vajalikud andmebaasi õigused
    GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-09-16 09:58:27.985






-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-11-10 14:04:47.009

-- tables
-- Table: atm
CREATE TABLE atm (
                     id serial  NOT NULL,
                     serial_number varchar(255)  NOT NULL,
                     CONSTRAINT atm_pk PRIMARY KEY (id)
);

-- Table: atm_service
CREATE TABLE atm_service (
                             id serial  NOT NULL,
                             name varchar(255)  NOT NULL,
                             CONSTRAINT atm_service_pk PRIMARY KEY (id)
);

-- Table: atm_service_relation
CREATE TABLE atm_service_relation (
                                      id serial  NOT NULL,
                                      atm_id int  NOT NULL,
                                      atm_service_id int  NOT NULL,
                                      CONSTRAINT atm_service_relation_pk PRIMARY KEY (id)
);

-- Table: customer
CREATE TABLE customer (
                          id serial  NOT NULL,
                          first_name varchar(255)  NOT NULL,
                          last_name varchar(255)  NOT NULL,
                          hobby varchar(255)  NULL,
                          personal_code varchar(50)  NOT NULL,
                          CONSTRAINT customer_ak_1 UNIQUE (personal_code) NOT DEFERRABLE  INITIALLY IMMEDIATE,
                          CONSTRAINT customer_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: atm_service_relation_atm (table: atm_service_relation)
ALTER TABLE atm_service_relation ADD CONSTRAINT atm_service_relation_atm
    FOREIGN KEY (atm_id)
        REFERENCES atm (id)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: atm_service_relation_atm_service (table: atm_service_relation)
ALTER TABLE atm_service_relation ADD CONSTRAINT atm_service_relation_atm_service
    FOREIGN KEY (atm_service_id)
        REFERENCES atm_service (id)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- End of file.

