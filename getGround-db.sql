DROP DATABASE IF EXISTS GET_GROUND; 
CREATE DATABASE GET_GROUND;

USE GET_GROUND;

CREATE TABLE IF NOT EXISTS `partners` (
	`id` INT ,
	`partner_type` VARCHAR(20),
    `lead_sales_contact` VARCHAR(20),
    `created_date` datetime,
	`updated_date` datetime,
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `sales_people` (
    `name` VARCHAR(20),
    `country` VARCHAR(20) 
);

CREATE TABLE IF NOT EXISTS `referrals` (
    `id` INT ,
    `company_id` INT,
    `partner_id` INT,
    `consultant_id` INT,
    `status` VARCHAR(20) CHARACTER SET utf8,
    `is_outbound` BOOLEAN, -- contains data with 1's and 0'
    `created_date` datetime,
    `updated_date` datetime,
    PRIMARY KEY (`id`)
);

/*
INSERT `sales people` values
*/

INSERT INTO `sales_people` VALUES
('Orange','Singapore'),
('Apple','Singapore'),
('Lion','HongKong'),
('Tree','HongKong'),
('Root','HongKong'),
('Sky','HongKong'),
('Cloud','UK'),
('Horiz','UK'),
('Leaf','UK'),
('Daisy','UK'),
('Tulip','UK'),
('Fig','UK')
;

/*
INSERT `partners` values
*/


INSERT INTO `partners` VALUES
(2,'Agent','Potato','2020-08-31','2020-12-04'),
(3,'Agent','Lion','2020-08-31','2021-04-20'),
(4,'Agent','Potato','2020-08-31','2021-03-25'),
(5,'Agent','Lion','2020-08-31','2020-12-07'),
(6,'Agent','Potato','2020-08-31','2021-01-04'),
(7,'Agent','Lion','2020-08-31','2021-02-19'),
(8,'Agent','Lion','2020-09-03','2020-12-07'),
( 9,'Agent','Daisy','2020-09-15','2021-02-10'),
(10,'IFA','Apple','2020-09-15','2021-02-10'),
(11,'Agent','Lion','2020-09-15','2020-12-07'),
(12,'Agent','Lion','2020-09-15','2021-02-06'),
(13,'Agent','Lion','2020-09-17','2021-01-20'),
(14,'IFA','Apple','2020-09-17','2021-01-26'),
(15,'Developer','Leaf','2020-09-17','2020-12-07'),
(16,'Agent','Lion','2020-09-17','2020-12-07'),
(17,'IFA','Apple','2020-09-21','2020-12-08'),
(18,'Agent','Potato','2020-09-21','2021-01-14'),
(19,'Agent','Lion','2020-09-22','2020-12-07'),
(20,'Agent','Potato','2020-09-22','2021-01-04'),
(21,'Other','0','2020-09-24','2020-09-24'),
(22,'Other','0','2020-09-24','2020-09-24'),
(23,'Other','0','2020-09-24','2020-09-24'),
(24,'Other','0','2020-09-24','2020-09-24'),
(25,'Agent','Potato','2020-09-29','2020-12-04'),
(26,'Agent','Leaf','2020-09-29','2021-01-12'),
(27,'Agent','Potato','2020-10-01','2020-12-04'),
(28,'Agent','Potato','2020-10-01','2021-01-04'),
(29,'Agent','Apple','2020-10-01','2021-01-26'),
(30,'Other','Apple','2020-10-01','2021-01-26')
;

/*
INSERT `referrals` values
*/
INSERT INTO `referrals` (`id`,`company_id`,`partner_id`,`consultant_id`,`status`,`is_outbound`,`created_date`,`updated_date`) VALUES 
(1,385,4,4,'successful',0,'2020-09-01','2020-09-01'),
(2,390,7,8,'successful',0,'2020-09-03','2020-09-03'),
(3,387,7,8,'successful',0,'2020-09-03','2020-09-03'),
(4,385,7,8,'successful',0,'2020-09-03','2020-09-03'),
(5,331,8,9,'successful',0,'2020-09-03','2020-09-03'),
(6,364,8,11,'successful',0,'2020-09-03','2020-09-03'),
(7,362,8,11,'successful',0,'2020-09-03','2020-09-04'),
(8,373,8,13,'successful',0,'2020-09-03','2020-09-03'),
(9,394,8,14,'disinterested',0,'2020-09-03','2020-12-09'),
(10,396,8,12,'successful',0,'2020-09-03','2020-09-030'),
(11,401,7,8,'successful',0,'2020-09-04','2020-09-04'),
(12,0,6,7,'successful',0,'2020-09-04','2020-09-24'),
(13,0,6,7,'successful',0,'2020-09-04','2020-09-04'),
(14,357,7,8,'successful',0,'2020-09-07','2020-09-07'),
(15,0,7,8,'successful',0,'2020-09-10','2020-09-10'),
(16,378,7,8,'successful',0,'2020-09-10','2020-09-10'),
(17,437,7,8,'successful',0,'2020-09-11','2020-09-11'),
(18,0,7,8,'pending',0,'2020-09-11','2020-09-11'),
(19,444,6,7,'successful',0,'2020-09-14','2020-09-14'),
(20,446,7,8,'successful',0,'2020-09-14','2020-09-14'),
(21,0,2,16,'successful',0,'2020-09-14','2020-09-14'),
(22,457,7,8,'successful',0,'2020-09-15','2020-09-15'),
(23,330,7,8,'successful',0,'2020-09-15','2020-09-15'),
(24,433,7,8,'successful',0,'2020-09-15','2020-09-15'),
(25,325,6,7,'successful',0,'2020-09-15','2020-09-24'),
(26,0,10,17,'successful',0,'2020-09-15','2020-09-15'),
(27,345,9,19,'successful',0,'2020-09-15','2020-09-15'),
(28,388,7,8,'successful',0,'2020-09-15','2020-09-15'),
(29,0,6,7,'successful',0,'2020-09-17','2020-09-17'),
(30,304,6,7,'successful',0,'2020-09-17','2020-09-24')
;





