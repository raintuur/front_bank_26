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
-- Last modification date: 2022-11-11 10:20:59.137

-- tables
-- Table: Table_18
CREATE TABLE Table_18 (

);

-- Table: address
CREATE TABLE address (
                         id serial  NOT NULL,
                         street_name varchar(255)  NOT NULL,
                         city_id int  NOT NULL,
                         start date  NOT NULL DEFAULT now(),
                         "end" date  NULL,
                         customer_id int  NOT NULL,
                         CONSTRAINT address_pk PRIMARY KEY (id)
);

-- Table: atm
CREATE TABLE atm (
                     id serial  NOT NULL,
                     serial_number varchar(255)  NOT NULL,
                     location_id int  NOT NULL,
                     status char(1)  NOT NULL DEFAULT 'A',
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

-- Table: city
CREATE TABLE city (
                      id serial  NOT NULL,
                      name varchar(255)  NOT NULL,
                      CONSTRAINT city_ak_1 UNIQUE (name) NOT DEFERRABLE  INITIALLY IMMEDIATE,
                      CONSTRAINT city_pk PRIMARY KEY (id)
);

-- Table: contact
CREATE TABLE contact (
                         id serial  NOT NULL,
                         telephone varchar(255)  NOT NULL,
                         email varchar(255)  NOT NULL,
                         customer_id int  NOT NULL,
                         start date  NOT NULL DEFAULT now(),
                         "end" date  NULL,
                         CONSTRAINT contact_pk PRIMARY KEY (id)
);

-- Table: customer
CREATE TABLE customer (
                          id serial  NOT NULL,
                          first_name varchar(255)  NOT NULL,
                          last_name varchar(255)  NOT NULL,
                          personal_code varchar(50)  NOT NULL,
                          user_id int  NOT NULL,
                          CONSTRAINT customer_ak_1 UNIQUE (personal_code) NOT DEFERRABLE  INITIALLY IMMEDIATE,
                          CONSTRAINT customer_pk PRIMARY KEY (id)
);

-- Table: location
CREATE TABLE location (
                          id serial  NOT NULL,
                          city_id int  NOT NULL,
                          name varchar(255)  NOT NULL,
                          address varchar(255)  NOT NULL,
                          longitude decimal(6,2)  NULL,
                          latitude decimal(6,2)  NULL,
                          status char(1)  NOT NULL DEFAULT 'A',
                          CONSTRAINT location_pk PRIMARY KEY (id)
);

-- Table: role
CREATE TABLE role (
                      id serial  NOT NULL,
                      type varchar(50)  NOT NULL,
                      CONSTRAINT role_pk PRIMARY KEY (id)
);

-- Table: user
CREATE TABLE "user" (
                        id serial  NOT NULL,
                        username varchar(50)  NOT NULL,
                        password varchar(50)  NOT NULL,
                        CONSTRAINT user_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: address_city (table: address)
ALTER TABLE address ADD CONSTRAINT address_city
    FOREIGN KEY (city_id)
        REFERENCES city (id)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: address_customer (table: address)
ALTER TABLE address ADD CONSTRAINT address_customer
    FOREIGN KEY (customer_id)
        REFERENCES customer (id)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: atm_location (table: atm)
ALTER TABLE atm ADD CONSTRAINT atm_location
    FOREIGN KEY (location_id)
        REFERENCES location (id)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

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

-- Reference: contact_customer (table: contact)
ALTER TABLE contact ADD CONSTRAINT contact_customer
    FOREIGN KEY (customer_id)
        REFERENCES customer (id)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: customer_user (table: customer)
ALTER TABLE customer ADD CONSTRAINT customer_user
    FOREIGN KEY (user_id)
        REFERENCES "user" (id)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- Reference: location_city (table: location)
ALTER TABLE location ADD CONSTRAINT location_city
    FOREIGN KEY (city_id)
        REFERENCES city (id)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;

-- End of file.

