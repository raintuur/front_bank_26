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
-- Last modification date: 2022-11-11 08:01:56.557

-- tables
-- Table: atm
CREATE TABLE atm
(
    id            serial       NOT NULL,
    serial_number varchar(255) NOT NULL,
    CONSTRAINT atm_pk PRIMARY KEY (id)
);

-- Table: atm_service
CREATE TABLE atm_service
(
    id   serial       NOT NULL,
    name varchar(255) NOT NULL,
    CONSTRAINT atm_service_pk PRIMARY KEY (id)
);

-- Table: atm_service_relation
CREATE TABLE atm_service_relation
(
    id             serial NOT NULL,
    atm_id         int    NOT NULL,
    atm_service_id int    NOT NULL,
    CONSTRAINT atm_service_relation_pk PRIMARY KEY (id)
);

-- Table: city
CREATE TABLE city
(
    id   serial       NOT NULL,
    name varchar(255) NOT NULL,
    CONSTRAINT city_ak_1 UNIQUE (name) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT city_pk PRIMARY KEY (id)
);

-- Table: customer
CREATE TABLE customer
(
    id            serial       NOT NULL,
    first_name    varchar(255) NOT NULL,
    last_name     varchar(255) NOT NULL,
    hobby         varchar(255) NULL,
    personal_code varchar(50)  NOT NULL,
    CONSTRAINT customer_ak_1 UNIQUE (personal_code) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT customer_pk PRIMARY KEY (id)
);

-- Table: location
CREATE TABLE location
(
    id        serial        NOT NULL,
    city_id   int           NOT NULL,
    name      varchar(255)  NOT NULL,
    adress    varchar(255)  NOT NULL,
    longitude decimal(6, 2) NULL,
    latitude  decimal(6, 2) NULL,
    CONSTRAINT location_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: atm_service_relation_atm (table: atm_service_relation)
ALTER TABLE atm_service_relation
    ADD CONSTRAINT atm_service_relation_atm
        FOREIGN KEY (atm_id)
            REFERENCES atm (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: atm_service_relation_atm_service (table: atm_service_relation)
ALTER TABLE atm_service_relation
    ADD CONSTRAINT atm_service_relation_atm_service
        FOREIGN KEY (atm_service_id)
            REFERENCES atm_service (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: location_city (table: location)
ALTER TABLE location
    ADD CONSTRAINT location_city
        FOREIGN KEY (city_id)
            REFERENCES city (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- End of file.

