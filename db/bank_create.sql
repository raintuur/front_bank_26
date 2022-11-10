-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-11-10 12:40:24.742

-- tables
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

-- End of file.

