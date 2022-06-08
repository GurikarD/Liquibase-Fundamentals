--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: company_newer.sql
--  Ran at: 6/9/22, 4:54 AM
--  Against: root@localhost@jdbc:mysql://localhost:3306/newer_company
--  Liquibase version: 4.8.0
--  *********************************************************************

--  Lock Database
UPDATE DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = 'DEVARAJ-TI11578 (10.0.75.1)', LOCKGRANTED = NOW() WHERE ID = 1 AND `LOCKED` = 0;

--  Changeset company_newer.sql::story-002::k0175
CREATE or replace VIEW orderdetails_v as (
    select orderNumber, productCode, quantityOrdered, priceEach
    from orderdetails
    where not orderdetails.soft_deleted
);

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('story-002', 'k0175', 'company_newer.sql', NOW(), 2, '8:8f276ff49001f966432a111329f4da3f', 'sql', '', 'EXECUTED', NULL, NULL, '4.8.0', '4730670536');

--  Release Database Lock
UPDATE DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

