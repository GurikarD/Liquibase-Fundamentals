-- liquibase formatted sql

--changeset k-0175:story-001
CREATE TABLE `orderdetails` (
  `orderNumber` int(11) NOT NULL,
  `productCode` varchar(15) NOT NULL,
  `quantityOrdered` int(11) NOT NULL,
  `priceEach` decimal(10,2) NOT NULL,
  `orderLineNumber` smallint(6) NOT NULL,
  `soft_deleted` boolean default false,
  PRIMARY KEY (`orderNumber`,`productCode`),
  KEY `productCode` (`productCode`)
);
--rollback DROP TABLE orderdetails

--changeset k0175:story-002 runOnChange:true
CREATE or replace VIEW orderdetails_v as (
    select orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber
    from orderdetails
    where not orderdetails.soft_deleted
)
--rollback DROP view orderdetails_v