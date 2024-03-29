--CREATE SCHEMA ANGULAR AUTHORIZATION DBA;
CREATE TABLE PHONE ("ID" VARCHAR(64) NOT NULL, "NAME" VARCHAR(128) NOT NULL, "SNIPPET" VARCHAR(512), "IMAGEURL" VARCHAR(128), "AGE" INTEGER NOT NULL, PRIMARY KEY ("ID"));
CREATE TABLE PHONE_DETAILS ("ID" VARCHAR(64) NOT NULL, "NAME" VARCHAR(128) NOT NULL, "DESCRIPTION" VARCHAR(1024), "IMAGEURLS" VARCHAR(512), "ADDITIONAL_FEATURES" VARCHAR(512), "AVAILABILITY" VARCHAR(512), "GPS" INTEGER NOT NULL, "INFRARED" INTEGER NOT NULL, PRIMARY KEY ("ID"));
--CREATE TABLE ANGULAR.PHONE ("NB_REF_RATE" DECIMAL(10,4) NOT NULL, "RATE_DATE" TIMESTAMP NOT NULL);