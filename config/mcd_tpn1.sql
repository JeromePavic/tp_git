#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


CREATE DATABASE IF NOT EXISTS  TPGIT;

USE TPGIT;


#------------------------------------------------------------
# Table: user
#------------------------------------------------------------

CREATE TABLE user(
        id           int (11) Auto_increment  NOT NULL ,
        nom          Varchar (25) NOT NULL,
        prenom       Varchar (25) NOT NULL,
        login        Varchar (25) NOT NULL ,
        mot_de_passe Varchar (25) NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: droits
#------------------------------------------------------------

CREATE TABLE droits(
        id       int (11) Auto_increment  NOT NULL ,
        niveau   Int ,
        severite Varchar (25) ,
        nom      Varchar (25) ,
        societe  Varchar (25) ,
        id_user  Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;

ALTER TABLE droits ADD CONSTRAINT FK_droits_id_user FOREIGN KEY (id_user) REFERENCES user(id);
