-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for qbcorev4
CREATE DATABASE IF NOT EXISTS `qbcorev4` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `qbcorev4`;

-- Dumping structure for table qbcorev4.admin_bans
CREATE TABLE IF NOT EXISTS `admin_bans` (
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dateandtime` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `expires` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table qbcorev4.admin_bans: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_bans` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.car_rentals
CREATE TABLE IF NOT EXISTS `car_rentals` (
  `steam` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `rent` int(11) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.car_rentals: ~11 rows (approximately)
/*!40000 ALTER TABLE `car_rentals` DISABLE KEYS */;
INSERT INTO `car_rentals` (`steam`, `citizenid`, `vehicle`, `rent`, `plate`, `status`) VALUES
	('steam:110000134d70437', 'NRY60579', '2649090', 3000, '2UD612AD', 'done'),
	('steam:1100001007411eb', 'CEW71560', '10209026', 3000, '4RN292WU', 'done'),
	('steam:11000014371b395', 'CAE07252', '1009666', 6000, '6AV002GU', 'done'),
	('steam:110000143a05e2e', 'LVT45723', '2216194', 3000, '2VI336AO', 'done'),
	('steam:110000134d70437', 'NRY60579', '480770', 3000, '3AG766YB', 'done'),
	('steam:1100001172a6517', 'FOT64704', '354818', 3000, '9AV759XX', 'done'),
	('steam:11000014371b395', 'CAE07252', '347650', 5000, '8WZ327KE', 'done'),
	('steam:1100001007411eb', 'CEW71560', '3243266', 3000, '1SZ275YG', 'done'),
	('steam:11000013230a55e', 'MGY48290', '274434', 3000, '1AZ217PW', 'done'),
	('steam:11000013230a55e', 'MGY48290', '323074', 3000, '2DL942IS', 'done'),
	('steam:11000013230a55e', 'MGY48290', '407298', 3000, '6XB775LM', 'done');
/*!40000 ALTER TABLE `car_rentals` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_accounts
CREATE TABLE IF NOT EXISTS `characters_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `bankid` varchar(50) DEFAULT NULL,
  `balance` int(20) DEFAULT 0,
  `authorized` varchar(500) DEFAULT NULL,
  `transactions` varchar(60000) DEFAULT '{}',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_accounts: 0 rows
/*!40000 ALTER TABLE `characters_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_accounts` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_bills
CREATE TABLE IF NOT EXISTS `characters_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `invoiceid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_bills: 0 rows
/*!40000 ALTER TABLE `characters_bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_bills` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_bindings
CREATE TABLE IF NOT EXISTS `characters_bindings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `key` text DEFAULT NULL,
  `command` text DEFAULT NULL,
  `argument` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_bindings: 0 rows
/*!40000 ALTER TABLE `characters_bindings` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_bindings` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_contacts
CREATE TABLE IF NOT EXISTS `characters_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_contacts: 0 rows
/*!40000 ALTER TABLE `characters_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_contacts` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_houses
CREATE TABLE IF NOT EXISTS `characters_houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT '[]',
  `name` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` int(11) DEFAULT NULL,
  `owned` varchar(50) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `hasgarage` varchar(50) DEFAULT 'false',
  `garage` varchar(200) DEFAULT '[]',
  `keyholders` text DEFAULT NULL,
  `decorations` longtext DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_houses: 1 rows
/*!40000 ALTER TABLE `characters_houses` DISABLE KEYS */;
INSERT INTO `characters_houses` (`id`, `citizenid`, `name`, `label`, `price`, `tier`, `owned`, `coords`, `hasgarage`, `garage`, `keyholders`, `decorations`, `stash`, `outfit`, `logout`) VALUES
	(1, 'MGY48290', 'peaceful st1', 'Peaceful St 1', 10, 1, 'true', '{"Cam":{"Z":34.09170150756836,"Y":-777.396240234375,"Yaw":-10.0,"X":-238.9189910888672,"H":250.07205200195313},"Enter":{"Z":34.09170150756836,"Y":-777.396240234375,"X":-238.9189910888672,"H":250.07205200195313}}', 'true', '{"Z":32.52523422241211,"Y":-774.7709350585938,"X":-248.7972412109375,"H":159.28184509277345}', '["MGY48290"]', '[{"z":3.43149886131286,"objectId":1,"object":2975490,"hashname":"v_ind_cflight","x":-240.51841125488324,"rotx":0.0,"y":-776.8015747070308,"roty":-0.0,"rotz":0.0},{"z":0.39065480232238,"objectId":2,"object":2975746,"hashname":"apa_mp_h_tab_sidelrg_04","x":-237.9795471191399,"rotx":0.0,"y":-774.8044189453162,"roty":-0.0,"rotz":0.0},{"z":2.66544971466064,"objectId":3,"object":2976002,"hashname":"v_ret_fh_walllighton","x":-244.2070678710944,"rotx":0.0,"y":-777.1752075195316,"roty":-0.0,"rotz":78.37500000000007}]', NULL, NULL, NULL);
/*!40000 ALTER TABLE `characters_houses` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_house_plants
CREATE TABLE IF NOT EXISTS `characters_house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `houseid` varchar(50) DEFAULT '11111',
  `plants` varchar(65000) DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_house_plants: 0 rows
/*!40000 ALTER TABLE `characters_house_plants` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_house_plants` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_inventory-stash
CREATE TABLE IF NOT EXISTS `characters_inventory-stash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(50) NOT NULL,
  `items` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_inventory-stash: 4 rows
/*!40000 ALTER TABLE `characters_inventory-stash` DISABLE KEYS */;
INSERT INTO `characters_inventory-stash` (`id`, `stash`, `items`) VALUES
	(1, 'boss_police', '[]'),
	(2, 'Autocare', '[{"type":"item","name":"metalscrap","weight":200,"label":"Metal Scrap","amount":18,"slot":1,"info":[],"unique":false,"useable":false,"image":"metalscrap.png"},{"type":"item","name":"plastic","weight":200,"label":"Plastic","amount":17,"slot":2,"info":[],"unique":false,"useable":false,"image":"plastic.png"}]'),
	(3, 'mechanicstash', '[{"amount":494,"name":"plastic","useable":false,"info":[],"image":"plastic.png","label":"Plastic","type":"item","weight":200,"unique":false,"slot":1},{"amount":496,"name":"metalscrap","useable":false,"info":[],"image":"metalscrap.png","label":"Metal Scrap","type":"item","weight":200,"unique":false,"slot":2},{"amount":500,"name":"steel","useable":false,"info":[],"image":"steel.png","label":"Steel","type":"item","weight":150,"unique":false,"slot":3},{"amount":500,"name":"iron","useable":false,"info":[],"image":"ironplate.png","label":"Iron","type":"item","weight":200,"unique":false,"slot":4},{"amount":500,"name":"aluminum","useable":false,"info":[],"image":"aluminum.png","label":"Aluminum","type":"item","weight":200,"unique":false,"slot":5}]'),
	(4, 'hD02AppartmentBg39', '[{"weight":0,"unique":false,"useable":true,"slot":1,"amount":1,"info":[],"image":"cigarette.png","label":"Cigarette","type":"item","name":"ciggy"},{"weight":1500,"unique":false,"useable":false,"slot":2,"amount":1,"info":[],"image":"drill-bit.png","label":"Drill-bit","type":"item","name":"drill-bit"}]');
/*!40000 ALTER TABLE `characters_inventory-stash` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_inventory-vehicle
CREATE TABLE IF NOT EXISTS `characters_inventory-vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(50) NOT NULL,
  `trunkitems` longtext DEFAULT NULL,
  `gloveboxitems` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_inventory-vehicle: 0 rows
/*!40000 ALTER TABLE `characters_inventory-vehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_inventory-vehicle` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_mails
CREATE TABLE IF NOT EXISTS `characters_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinytext DEFAULT NULL,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_mails: 2 rows
/*!40000 ALTER TABLE `characters_mails` DISABLE KEYS */;
INSERT INTO `characters_mails` (`id`, `citizenid`, `sender`, `subject`, `message`, `read`, `mailid`, `date`, `button`) VALUES
	(1, 'MGY48290', 'Autoscout24', 'Purchased a new vehicle!', 'Dear Haji Shaheb,<br /><br />You have purchased a new vehicle <br><br>license Plate: <b>KYFD7080</b> <br><br>We wish you many safe miles!<br /><br />Sincerely,<br />Autoscout24', '0', 664957, '2021-10-04 03:33:07', '[]'),
	(2, 'MGY48290', 'Autoscout24', 'Your advertisement', 'Dear reader,<br/><br/>HYou will also receive an e-mail of your recent advertisement.<br><br>License Plate: <strong>KYFD7080</strong> <br>Selling price: <strong>$10000</strong><br><br>Your vehicle has been successfully sold and the amount has been credited to your bank.<br><br>Sincerely,<br>Autoscout24', '0', 654568, '2021-10-04 03:33:07', '[]');
/*!40000 ALTER TABLE `characters_mails` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_messages
CREATE TABLE IF NOT EXISTS `characters_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_messages: 0 rows
/*!40000 ALTER TABLE `characters_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_messages` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_metadata
CREATE TABLE IF NOT EXISTS `characters_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `steam` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `money` text DEFAULT NULL,
  `charinfo` text DEFAULT NULL,
  `job` tinytext DEFAULT NULL,
  `gang` tinytext DEFAULT NULL,
  `position` text DEFAULT NULL,
  `globals` text DEFAULT NULL,
  `inventory` varchar(65000) DEFAULT '[]',
  `ammo` text DEFAULT NULL,
  `licenses` text DEFAULT NULL,
  `skill` varchar(50) DEFAULT NULL,
  `addiction` varchar(50) DEFAULT NULL,
  `jailtime` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_metadata: 1 rows
/*!40000 ALTER TABLE `characters_metadata` DISABLE KEYS */;
INSERT INTO `characters_metadata` (`id`, `citizenid`, `cid`, `steam`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `globals`, `inventory`, `ammo`, `licenses`, `skill`, `addiction`, `jailtime`) VALUES
	(1, 'MGY48290', 1, 'steam:11000013230a55e', 'license:acdab8e13ed68e5b0598f1c3d0160a476275bfc9', 'Colonel_x', '{"bank":9999998303150,"crypto":0,"cash":10000000000486.0}', '{"firstname":"Haji","phone":"0140231662","lastname":"Shaheb","nationality":"Bangladeshi","birthdate":"1993-01-11","account":"US017364879664965","gender":0}', '{"name":"mechanic","plate":"none","label":"Mechanic","grade":{"name":"Owner","level":4},"serial":"dB099hBM617kJ103","onduty":true,"payment":610,"isboss":true}', 'null', '{"y":-1098.125732421875,"z":28.4749698638916,"a":60.1727066040039,"x":-455.3993835449219}', '{"inventorydisabled":false,"adrenaline":0,"stress":0,"tracker":false,"medicalstate":false,"ishighcommand":false,"ishandcuffed":false,"craftingrep":0,"stamina":100,"dealerrep":0,"ovrep":0,"scraprep":0,"phone":[],"attachmentcraftingrep":0,"plantagerep":0,"jailitems":[],"gang":"none","hackrep":0,"jailtime":0,"health":200,"appartment-data":{"Id":"hD02AppartmentBg39","Name":"apartment3"},"fingerprint":"FlCd648j22tfu8355","geduldrep":0,"isdead":false,"armor":0,"duty-vehicles":{"Heli":false,"Motor":false,"Audi":false,"Unmarked":false,"Standard":false},"callsign":"NO CALLSIGN","hunger":57.00000000000003,"commandbinds":[],"visrep":0,"licences":{"driver":true,"weapon":true},"haircode":"HIv073DpZ63pMN4833","thirst":57.00000000000003,"bloodtype":"A+","appartment-tier":2,"lockpickrep":0,"slimecode":"SnI412zv83iqt5808"}', '[{"name":"radio","info":[],"type":"item","amount":1,"slot":1},{"name":"phone","info":[],"type":"item","amount":1,"slot":2},{"name":"lockpick","info":[],"type":"item","amount":1,"slot":3},{"name":"weapon_snspistol_mk2","info":{"ammo":11,"quality":65.25,"serie":"08IvA7RD746TpMN"},"type":"weapon","amount":1,"slot":4},{"name":"pistol-ammo","info":[],"type":"item","amount":1,"slot":5},{"name":"toolkit","info":[],"type":"item","amount":1,"slot":6},{"name":"weapon_appistol","info":{"quality":100.0,"serie":"57IYI2zv836qtaq"},"type":"weapon","amount":1,"slot":7},{"name":"coke-bag","info":[],"type":"item","amount":4,"slot":8},{"name":"water","info":[],"type":"item","amount":1,"slot":9},{"name":"id-card","info":{"firstname":"Haji","citizenid":"MGY48290","nationality":"Bangladeshi","lastname":"Shaheb","birthdate":"1993-01-11","gender":0},"type":"item","amount":1,"slot":10},{"name":"advancedlockpick","info":[],"type":"item","amount":5,"slot":11},{"name":"electronickit","info":[],"type":"item","amount":2,"slot":12},{"name":"red-card","info":[],"type":"item","amount":2,"slot":13},{"name":"weapon_hammer","info":{"ammo":0,"quality":68.0,"serie":"07Cdi4tj228futS"},"type":"weapon","amount":1,"slot":15}]', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `characters_metadata` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_outfits
CREATE TABLE IF NOT EXISTS `characters_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text DEFAULT NULL,
  `outfitId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_outfits: 0 rows
/*!40000 ALTER TABLE `characters_outfits` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_outfits` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_reputations
CREATE TABLE IF NOT EXISTS `characters_reputations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `job` text DEFAULT NULL,
  `dealer` text DEFAULT NULL,
  `crafting` text DEFAULT NULL,
  `handweaponcrafting` text DEFAULT NULL,
  `weaponcrafting` text DEFAULT NULL,
  `attachmentcrafting` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_reputations: 0 rows
/*!40000 ALTER TABLE `characters_reputations` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_reputations` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_skins
CREATE TABLE IF NOT EXISTS `characters_skins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL DEFAULT '',
  `model` varchar(50) NOT NULL DEFAULT '0',
  `skin` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_skins: 1 rows
/*!40000 ALTER TABLE `characters_skins` DISABLE KEYS */;
INSERT INTO `characters_skins` (`id`, `citizenid`, `model`, `skin`) VALUES
	(3, 'MGY48290', '1885233650', '{"arms":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"makeup":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"bracelet":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"ageing":{"item":6,"defaultTexture":0,"defaultItem":-1,"texture":0},"hair":{"item":4,"defaultTexture":0,"defaultItem":0,"texture":29},"bag":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"blush":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"ear":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"mask":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"lipstick":{"item":-1,"defaultTexture":1,"defaultItem":-1,"texture":1},"pants":{"item":4,"defaultTexture":0,"defaultItem":0,"texture":1},"vest":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"beard":{"item":3,"defaultTexture":1,"defaultItem":-1,"texture":29},"torso2":{"item":63,"defaultTexture":0,"defaultItem":0,"texture":0},"eyebrows":{"item":9,"defaultTexture":1,"defaultItem":-1,"texture":1},"accessory":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"shoes":{"item":1,"defaultTexture":0,"defaultItem":1,"texture":0},"decals":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"hat":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"watch":{"item":-1,"defaultTexture":0,"defaultItem":-1,"texture":0},"face":{"item":13,"defaultTexture":0,"defaultItem":0,"texture":1},"glass":{"item":0,"defaultTexture":0,"defaultItem":0,"texture":0},"t-shirt":{"item":15,"defaultTexture":0,"defaultItem":1,"texture":0}}');
/*!40000 ALTER TABLE `characters_skins` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_vehicles
CREATE TABLE IF NOT EXISTS `characters_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL,
  `drivingdistance` int(255) NOT NULL DEFAULT 0,
  `forSale` int(11) DEFAULT 0,
  `salePrice` int(11) DEFAULT 0,
  `finance_owed` int(255) DEFAULT NULL,
  `depotprice` int(255) DEFAULT 100,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.characters_vehicles: 6 rows
/*!40000 ALTER TABLE `characters_vehicles` DISABLE KEYS */;
INSERT INTO `characters_vehicles` (`id`, `citizenid`, `vehicle`, `plate`, `garage`, `state`, `mods`, `status`, `metadata`, `drivingdistance`, `forSale`, `salePrice`, `finance_owed`, `depotprice`) VALUES
	(1, 'MGY48290', 'intruder', 'KYFD7080', 'Police', 'in', '{}', NULL, '"{"Engine":1000.0,"Fuel":100.0,"Body":1000.0}"', 68, 0, 0, NULL, 0),
	(2, 'MGY48290', 'mustang19', 'ECXV5303', 'Legion Parking', 'in', '{}', NULL, '{"Engine":1000.0,"Fuel":61,"Body":1000.0}', 1806, 0, 0, NULL, 0),
	(3, 'MGY48290', 'comet2', '7PI235MR', 'Legion Parking', 'in', '{}', NULL, '{"Engine":1000.0,"Fuel":61,"Body":1000.0}', 1892, 0, 0, NULL, 0),
	(4, 'MGY48290', 'thrust', '8ZR907EY', 'Legion Parking', 'in', '{}', NULL, '{"Engine":1000.0,"Fuel":50,"Body":937.4168701171875}', 2255, 0, 0, NULL, 0),
	(5, 'MGY48290', 't20', '6SX414HB', 'Legion Parking', 'out', '{}', NULL, '{"Engine":1000.0,"Fuel":100,"Body":1000.0}', 910, 0, 0, NULL, 0),
	(6, 'MGY48290', 'vigero', '6PL306LU', 'Legion Parking', 'in', '{}', NULL, '{"Engine":1000.0,"Fuel":54,"Body":1000.0}', 2228, 0, 0, NULL, 0);
/*!40000 ALTER TABLE `characters_vehicles` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.characters_warns
CREATE TABLE IF NOT EXISTS `characters_warns` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`#`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.characters_warns: ~1 rows (approximately)
/*!40000 ALTER TABLE `characters_warns` DISABLE KEYS */;
INSERT INTO `characters_warns` (`#`, `senderIdentifier`, `targetIdentifier`, `reason`, `warnId`) VALUES
	(129, 'steam:11000013230a55e', 'steam:11000013230a55e', 'fuck', 'WARN-4879');
/*!40000 ALTER TABLE `characters_warns` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.character_current
CREATE TABLE IF NOT EXISTS `character_current` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` longtext DEFAULT NULL,
  `model` longtext DEFAULT NULL,
  `drawables` longtext DEFAULT NULL,
  `props` longtext DEFAULT NULL,
  `drawtextures` longtext DEFAULT NULL,
  `proptextures` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.character_current: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_current` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_current` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.character_face
CREATE TABLE IF NOT EXISTS `character_face` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` longtext DEFAULT NULL,
  `hairColor` longtext DEFAULT NULL,
  `headBlend` longtext DEFAULT NULL,
  `headOverlay` longtext DEFAULT NULL,
  `headStructure` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.character_face: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_face` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_face` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `job` longtext DEFAULT NULL,
  `money` longtext DEFAULT NULL,
  `stash` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.companies: ~0 rows (approximately)
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `jailtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table qbcorev4.fine_types: ~89 rows (approximately)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`, `jailtime`) VALUES
	(1, 'Murder', 25000, 0, 0),
	(2, 'Involuntary Manslaughter', 10000, 0, 120),
	(3, 'Vehicular Manslaughter', 7500, 0, 100),
	(4, 'Attempted Murder on LEO', 1500, 0, 60),
	(5, 'Attempted Murder', 1000, 0, 50),
	(6, 'Assault w/ Deadly Weapon on LEO', 700, 0, 45),
	(7, 'Assault w/ Deadly Weapon', 350, 0, 30),
	(8, 'Assault on LEO', 150, 0, 15),
	(9, 'Assault', 100, 0, 10),
	(10, 'Kidnapping of an LEO', 400, 0, 40),
	(11, 'Kidnapping / Hostage Taking', 200, 0, 20),
	(12, 'Bank Robbery', 800, 0, 50),
	(13, 'Armored Truck Robbery', 650, 0, 40),
	(14, 'Jewelery Store Robbery ', 500, 0, 30),
	(15, 'Store Robbery', 150, 0, 15),
	(16, 'House Robbery', 100, 0, 10),
	(17, 'Corruption', 10000, 0, 650),
	(18, 'Felony Driving Under the Influence', 300, 0, 30),
	(19, 'Grand Theft Auto', 300, 0, 20),
	(20, 'Evading Arrest', 200, 0, 20),
	(21, 'Driving Under the Influence', 150, 0, 15),
	(22, 'Hit and Run', 150, 0, 15),
	(23, 'Operating a Motor Vehicle without a License', 100, 0, 10),
	(24, 'Criminal Speeding', 300, 0, 10),
	(25, 'Excessive Speeding 4', 250, 0, 0),
	(26, 'Excessive Speeding 3', 200, 0, 0),
	(27, 'Excessive Speeding 2', 150, 0, 0),
	(28, 'Excessive Speeding', 100, 0, 0),
	(29, 'Operating an Unregisted Motor Vehicle', 100, 0, 5),
	(30, 'Reckless Endangerment', 150, 0, 5),
	(31, 'Careless Driving', 100, 0, 0),
	(32, 'Operating a Non-Street Legal Vehicle', 200, 0, 5),
	(33, 'Failure to Stop', 100, 0, 0),
	(34, 'Obstructing Traffic', 150, 0, 0),
	(35, 'Illegal Lane Change', 100, 0, 0),
	(36, 'Failure to Yield to an Emergency Vehicle', 150, 0, 0),
	(37, 'Illegal Parking', 100, 0, 0),
	(38, 'Excessive Vehicle Noise', 100, 0, 0),
	(39, 'Driving without Proper Use of Headlights', 100, 0, 0),
	(40, 'Illegal U-Turn', 100, 0, 0),
	(41, 'Drug Manufacturing/Cultivation', 550, 0, 40),
	(42, 'Possession of Schedule 1 Drug', 150, 0, 15),
	(43, 'Possession of Schedule 2 Drug', 250, 0, 20),
	(44, 'Sale/Distribution of Schedule 1 Drug', 250, 0, 20),
	(45, 'Sale/Distribution of Schedule 2 Drug', 400, 0, 30),
	(46, 'Drug Trafficking', 500, 0, 40),
	(47, 'Weapons Caching of Class 2s', 2500, 0, 120),
	(48, 'Weapons Caching of Class 1s', 1250, 0, 60),
	(49, 'Weapons Trafficking of Class 2s', 1700, 0, 80),
	(50, 'Weapons Trafficking of Class 1s', 800, 0, 45),
	(51, 'Possession of a Class 2 Firearm', 800, 0, 40),
	(52, 'Possession of a Class 1 Firearm', 150, 0, 15),
	(53, 'Brandishing a Firearm', 100, 0, 5),
	(54, 'Unlawful discharge of a firearm', 150, 0, 10),
	(55, 'Perjury', 1000, 0, 60),
	(56, 'Arson', 500, 0, 30),
	(57, 'False Impersonation of a Government Official', 200, 0, 25),
	(58, 'Possession of Dirty Money', 200, 0, 25),
	(59, 'Possession of Stolen Goods', 100, 0, 15),
	(60, 'Unlawful Solicitation', 150, 0, 20),
	(61, 'Larceny', 150, 0, 20),
	(62, 'Felony Attempted Commision of an Offence/Crime', 350, 0, 20),
	(63, 'Tampering With Evidence', 200, 0, 20),
	(64, 'Illegal Gambling', 200, 0, 20),
	(65, 'Bribery', 200, 0, 20),
	(66, 'Stalking', 350, 0, 20),
	(67, 'Organizing an illegal event', 150, 0, 15),
	(68, 'Participating in an illegal event', 50, 0, 5),
	(69, 'Criminal Mischief', 100, 0, 15),
	(70, 'Prostitution', 250, 0, 15),
	(71, 'Failure to Identify', 150, 0, 15),
	(72, 'Obstruction of Justice', 150, 0, 15),
	(73, 'Resisting Arrest', 100, 0, 10),
	(74, 'Disturbing the Peace', 100, 0, 10),
	(75, 'Threat to do Bodily Harm', 100, 0, 10),
	(76, 'Terroristic Threat', 150, 0, 10),
	(77, 'Damage to Government Property', 150, 0, 10),
	(78, 'Contempt of Court', 250, 0, 10),
	(79, 'Failure to Obey a Lawful Order', 150, 0, 10),
	(80, 'False Report', 100, 0, 10),
	(81, 'Trespassing', 100, 0, 10),
	(82, 'Loitering', 100, 0, 0),
	(83, 'Public Intoxication', 100, 0, 0),
	(84, 'Indecent Exposure', 100, 0, 0),
	(85, 'Verbal Harassment ', 100, 0, 0),
	(86, 'Aiding and Abetting', 100, 0, 0),
	(87, 'Incident Report', 0, 0, 0),
	(88, 'Written Citation', 0, 0, 0),
	(89, 'Verbal Warning', 0, 0, 0);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.gangs
CREATE TABLE IF NOT EXISTS `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `grades` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.gangs: ~0 rows (approximately)
/*!40000 ALTER TABLE `gangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangs` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.gangs_members
CREATE TABLE IF NOT EXISTS `gangs_members` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `gang` longtext NOT NULL DEFAULT '0',
  `grade` longtext NOT NULL DEFAULT '0',
  `cid` longtext NOT NULL DEFAULT '0',
  `char` longtext DEFAULT NULL,
  PRIMARY KEY (`index`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.gangs_members: ~0 rows (approximately)
/*!40000 ALTER TABLE `gangs_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangs_members` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.gangs_money
CREATE TABLE IF NOT EXISTS `gangs_money` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `gang` longtext DEFAULT NULL,
  `amount` longtext DEFAULT NULL,
  PRIMARY KEY (`index`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.gangs_money: ~6 rows (approximately)
/*!40000 ALTER TABLE `gangs_money` DISABLE KEYS */;
INSERT INTO `gangs_money` (`index`, `gang`, `amount`) VALUES
	(7, 'crips', '0'),
	(8, 'ballas', '0'),
	(9, 'ballas', '0'),
	(10, 'vagos', '0'),
	(11, 'vagos', '0'),
	(12, 'bloods', '0');
/*!40000 ALTER TABLE `gangs_money` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.gang_territoriums
CREATE TABLE IF NOT EXISTS `gang_territoriums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gang` varchar(50) DEFAULT NULL,
  `points` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.gang_territoriums: ~0 rows (approximately)
/*!40000 ALTER TABLE `gang_territoriums` DISABLE KEYS */;
/*!40000 ALTER TABLE `gang_territoriums` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.jobs_secret
CREATE TABLE IF NOT EXISTS `jobs_secret` (
  `cid` varchar(50) DEFAULT NULL,
  `recieved` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.jobs_secret: ~0 rows (approximately)
/*!40000 ALTER TABLE `jobs_secret` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs_secret` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.lapraces
CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.lapraces: ~13 rows (approximately)
/*!40000 ALTER TABLE `lapraces` DISABLE KEYS */;
INSERT INTO `lapraces` (`id`, `name`, `checkpoints`, `records`, `creator`, `distance`, `raceid`) VALUES
	(1, 'Yellowjack Flypass', '[{"coords":{"y":2958.3720703125,"x":1875.375,"z":45.14242172241211},"offset":{"right":{"y":2967.04638671875,"x":1872.976806640625,"z":45.07709121704101},"left":{"y":2949.69775390625,"x":1877.773193359375,"z":45.2077522277832}}},{"coords":{"y":2683.062255859375,"x":1198.8291015625,"z":37.16691207885742},"offset":{"right":{"y":2692.034912109375,"x":1199.526123046875,"z":37.09968566894531},"left":{"y":2674.089599609375,"x":1198.132080078125,"z":37.23413848876953}}},{"coords":{"y":2690.384521484375,"x":527.131591796875,"z":41.84875869750976},"offset":{"right":{"y":2699.25341796875,"x":525.6044311523438,"z":41.7547607421875},"left":{"y":2681.515625,"x":528.6587524414063,"z":41.94275665283203}}},{"coords":{"y":2744.42529296875,"x":262.2024841308594,"z":43.31705856323242},"offset":{"right":{"y":2746.191650390625,"x":271.027099609375,"z":43.23944473266601},"left":{"y":2742.658935546875,"x":253.3778839111328,"z":43.39467239379883}}},{"coords":{"y":3480.694091796875,"x":422.9758605957031,"z":34.00617599487305},"offset":{"right":{"y":3471.86962890625,"x":424.7442321777344,"z":33.98057174682617},"left":{"y":3489.5185546875,"x":421.2074890136719,"z":34.03178024291992}}},{"coords":{"y":3485.38427734375,"x":1525.4305419921876,"z":35.8322525024414},"offset":{"right":{"y":3476.41259765625,"x":1524.719482421875,"z":35.77807235717773},"left":{"y":3494.35595703125,"x":1526.1416015625,"z":35.88643264770508}}},{"coords":{"y":3757.80126953125,"x":2126.531494140625,"z":32.4999771118164},"offset":{"right":{"y":3749.9609375,"x":2130.95068359375,"z":32.53723526000976},"left":{"y":3765.6416015625,"x":2122.1123046875,"z":32.46271896362305}}},{"coords":{"y":4174.04345703125,"x":2469.285400390625,"z":36.72677993774414},"offset":{"right":{"y":4178.24169921875,"x":2477.24609375,"z":36.68252944946289},"left":{"y":4169.84521484375,"x":2461.32470703125,"z":36.77103042602539}}},{"coords":{"y":4734.970703125,"x":2240.483642578125,"z":38.80957794189453},"offset":{"right":{"y":4743.69873046875,"x":2242.6787109375,"z":38.82933044433594},"left":{"y":4726.24267578125,"x":2238.28857421875,"z":38.78982543945312}}},{"coords":{"y":4577.22802734375,"x":1834.168212890625,"z":35.53285598754883},"offset":{"right":{"y":4586.18017578125,"x":1833.24169921875,"z":35.53355026245117},"left":{"y":4568.27587890625,"x":1835.0947265625,"z":35.53216171264648}}},{"coords":{"y":4727.18359375,"x":1691.223388671875,"z":41.61698150634765},"offset":{"right":{"y":4729.96533203125,"x":1699.78271484375,"z":41.64802169799805},"left":{"y":4724.40185546875,"x":1682.6640625,"z":41.58594131469726}}},{"coords":{"y":5177.076171875,"x":2020.9342041015626,"z":48.49382400512695},"offset":{"right":{"y":5169.7998046875,"x":2026.2298583984376,"z":48.39665603637695},"left":{"y":5184.3525390625,"x":2015.6385498046876,"z":48.59099197387695}}},{"coords":{"y":5090.125,"x":2510.454345703125,"z":43.74024963378906},"offset":{"right":{"y":5083.1826171875,"x":2509.5615234375,"z":43.6585693359375},"left":{"y":5097.0673828125,"x":2511.34716796875,"z":43.82192993164062}}},{"coords":{"y":4857.60888671875,"x":2673.003173828125,"z":44.05578994750976},"offset":{"right":{"y":4855.296875,"x":2662.2490234375,"z":44.04547500610351},"left":{"y":4859.9208984375,"x":2683.75732421875,"z":44.06610488891601}}},{"coords":{"y":2905.466796875,"x":2387.153564453125,"z":39.66144561767578},"offset":{"right":{"y":2917.0126953125,"x":2377.578125,"z":39.71836471557617},"left":{"y":2893.9208984375,"x":2396.72900390625,"z":39.60452651977539}}},{"coords":{"y":1880.3641357421876,"x":1870.642822265625,"z":59.52225112915039},"offset":{"right":{"y":1874.8292236328126,"x":1856.7012939453126,"z":59.52994155883789},"left":{"y":1885.8990478515626,"x":1884.5843505859376,"z":59.51456069946289}}},{"coords":{"y":1184.4998779296876,"x":2213.62939453125,"z":72.4609603881836},"offset":{"right":{"y":1180.426513671875,"x":2207.9365234375,"z":72.45027160644531},"left":{"y":1188.5732421875,"x":2219.322265625,"z":72.47164916992188}}},{"coords":{"y":1537.9671630859376,"x":2542.260498046875,"z":30.06058692932129},"offset":{"right":{"y":1537.1590576171876,"x":2557.238525390625,"z":29.96577262878418},"left":{"y":1538.7752685546876,"x":2527.282470703125,"z":30.1554012298584}}},{"coords":{"y":2420.303466796875,"x":2605.815185546875,"z":23.01124382019043},"offset":{"right":{"y":2419.470458984375,"x":2614.776611328125,"z":23.0195198059082},"left":{"y":2421.136474609375,"x":2596.853759765625,"z":23.00296783447265}}},{"coords":{"y":3011.303955078125,"x":2224.497802734375,"z":44.61103439331055},"offset":{"right":{"y":3020.29443359375,"x":2224.9130859375,"z":44.61573791503906},"left":{"y":3002.3134765625,"x":2224.08251953125,"z":44.60633087158203}}},{"coords":{"y":2980.568603515625,"x":1976.7724609375,"z":45.15242767333984},"offset":{"right":{"y":2989.406005859375,"x":1975.069091796875,"z":45.16176986694336},"left":{"y":2971.731201171875,"x":1978.475830078125,"z":45.14308547973633}}}]', '{"Holder":["Ivan","Kravchenko"],"Time":9268}', 'PLT89010', 13535, 'LR-7611'),
	(2, 'Military Run', '[{"coords":{"y":-3234.47900390625,"x":181.62313842773438,"z":5.31661319732666},"offset":{"left":{"y":-3233.919677734375,"x":171.65635681152345,"z":4.72470521926879},"right":{"y":-3235.038330078125,"x":191.5899200439453,"z":5.90852117538452}}},{"coords":{"y":3180.358154296875,"x":-1601.669921875,"z":29.75486373901367},"offset":{"left":{"y":3178.15771484375,"x":-1606.1561279296876,"z":29.9325885772705},"right":{"y":3182.55859375,"x":-1597.1837158203126,"z":29.57713890075683}}},{"coords":{"y":-3065.52099609375,"x":222.06871032714845,"z":5.33586311340332},"offset":{"left":{"y":-3058.943115234375,"x":228.21142578125,"z":5.34953308105468},"right":{"y":-3072.098876953125,"x":215.92599487304688,"z":5.32219314575195}}},{"coords":{"y":-3274.883544921875,"x":180.386962890625,"z":5.24455642700195},"offset":{"left":{"y":-3274.89990234375,"x":171.38748168945313,"z":5.1498212814331},"right":{"y":-3274.8671875,"x":189.38644409179688,"z":5.3392915725708}}}]', '{"Holder":["Flash","Jones"],"Time":24226}', 'MFX57984', 13378, 'LR-2637'),
	(4, 'Grand Prix', '[{"coords":{"y":6445.25732421875,"x":66.45169830322266,"z":30.58216476440429},"offset":{"right":{"y":6456.24755859375,"x":56.24384307861328,"z":30.69482231140136},"left":{"y":6434.26708984375,"x":76.65955352783203,"z":30.46950721740722}}},{"coords":{"y":6172.974609375,"x":-204.4615478515625,"z":30.4196720123291},"offset":{"right":{"y":6183.55615234375,"x":-215.09259033203126,"z":30.5416259765625},"left":{"y":6162.39306640625,"x":-193.83050537109376,"z":30.2977180480957}}},{"coords":{"y":5627.92578125,"x":-602.2551879882813,"z":38.12812423706055},"offset":{"right":{"y":5636.04345703125,"x":-614.8648071289063,"z":37.81162643432617},"left":{"y":5619.80810546875,"x":-589.6455688476563,"z":38.44462203979492}}},{"coords":{"y":5291.98974609375,"x":-1138.0113525390626,"z":51.46316146850586},"offset":{"right":{"y":5303.74267578125,"x":-1147.331298828125,"z":51.37465286254883},"left":{"y":5280.23681640625,"x":-1128.69140625,"z":51.55167007446289}}},{"coords":{"y":5194.408203125,"x":-1314.604736328125,"z":57.6689567565918},"offset":{"right":{"y":5198.05126953125,"x":-1329.1553955078126,"z":57.58293151855469},"left":{"y":5190.76513671875,"x":-1300.0540771484376,"z":57.7549819946289}}},{"coords":{"y":4816.69140625,"x":-1686.692626953125,"z":59.96606063842773},"offset":{"right":{"y":4828.00146484375,"x":-1696.545654296875,"z":59.89985275268555},"left":{"y":4805.38134765625,"x":-1676.839599609375,"z":60.03226852416992}}},{"coords":{"y":4460.72119140625,"x":-2137.81640625,"z":62.83550262451172},"offset":{"right":{"y":4474.4072265625,"x":-2143.950439453125,"z":63.09003067016601},"left":{"y":4447.03515625,"x":-2131.682373046875,"z":62.58097457885742}}},{"coords":{"y":3943.534912109375,"x":-2388.22998046875,"z":23.93548774719238},"offset":{"right":{"y":3948.689453125,"x":-2402.315673828125,"z":24.09342193603515},"left":{"y":3938.38037109375,"x":-2374.144287109375,"z":23.77755355834961}}},{"coords":{"y":3219.901611328125,"x":-2587.93701171875,"z":12.90890216827392},"offset":{"right":{"y":3220.500244140625,"x":-2602.923583984375,"z":13.11948108673095},"left":{"y":3219.302978515625,"x":-2572.950439453125,"z":12.69832324981689}}},{"coords":{"y":2289.198486328125,"x":-2686.4501953125,"z":19.51415252685547},"offset":{"right":{"y":2274.205322265625,"x":-2686.80419921875,"z":19.79860305786132},"left":{"y":2304.191650390625,"x":-2686.09619140625,"z":19.22970199584961}}},{"coords":{"y":2248.55078125,"x":-2341.13916015625,"z":32.08878707885742},"offset":{"right":{"y":2233.603759765625,"x":-2339.942138671875,"z":32.48501968383789},"left":{"y":2263.497802734375,"x":-2342.336181640625,"z":31.69255638122558}}},{"coords":{"y":2424.055908203125,"x":-1755.2999267578126,"z":30.75733566284179},"offset":{"right":{"y":2410.42578125,"x":-1749.0374755859376,"z":30.77607154846191},"left":{"y":2437.68603515625,"x":-1761.5623779296876,"z":30.73859977722168}}},{"coords":{"y":2477.708251953125,"x":-1310.1370849609376,"z":22.9171028137207},"offset":{"right":{"y":2467.560791015625,"x":-1299.0909423828126,"z":23.04034423828125},"left":{"y":2487.855712890625,"x":-1321.1832275390626,"z":22.79386138916015}}},{"coords":{"y":2854.26318359375,"x":-439.60125732421877,"z":35.4201545715332},"offset":{"right":{"y":2839.92529296875,"x":-435.1963195800781,"z":35.55568695068359},"left":{"y":2868.60107421875,"x":-444.0061950683594,"z":35.28462219238281}}},{"coords":{"y":2643.064697265625,"x":164.17929077148438,"z":47.77536392211914},"offset":{"right":{"y":2629.821533203125,"x":157.13621520996095,"z":47.88969802856445},"left":{"y":2656.307861328125,"x":171.2223663330078,"z":47.66102981567383}}},{"coords":{"y":2675.81396484375,"x":470.2565612792969,"z":42.59011459350586},"offset":{"right":{"y":2660.99658203125,"x":472.589599609375,"z":42.54578018188476},"left":{"y":2690.63134765625,"x":467.92352294921877,"z":42.63444900512695}}},{"coords":{"y":2772.322998046875,"x":1538.3988037109376,"z":37.31567001342773},"offset":{"right":{"y":2760.123046875,"x":1547.125732421875,"z":37.3392219543457},"left":{"y":2784.52294921875,"x":1529.671875,"z":37.29211807250976}}},{"coords":{"y":3008.75537109375,"x":2194.38671875,"z":44.71215438842773},"offset":{"right":{"y":2993.7939453125,"x":2195.4560546875,"z":44.60954284667969},"left":{"y":3023.716796875,"x":2193.3173828125,"z":44.81476593017578}}},{"coords":{"y":2890.66064453125,"x":2467.101318359375,"z":46.97845077514648},"offset":{"right":{"y":2881.23291015625,"x":2478.75390625,"z":46.403076171875},"left":{"y":2900.08837890625,"x":2455.44873046875,"z":47.55382537841797}}},{"coords":{"y":3834.8759765625,"x":2940.72900390625,"z":51.77677154541015},"offset":{"right":{"y":3835.19873046875,"x":2955.72265625,"z":52.06781768798828},"left":{"y":3834.55322265625,"x":2925.7353515625,"z":51.48572540283203}}},{"coords":{"y":4974.82080078125,"x":2671.263427734375,"z":44.00182723999023},"offset":{"right":{"y":4977.60107421875,"x":2686.00341796875,"z":43.9588394165039},"left":{"y":4972.04052734375,"x":2656.5234375,"z":44.04481506347656}}},{"coords":{"y":5919.87841796875,"x":2309.194091796875,"z":47.74493026733398},"offset":{"right":{"y":5929.13671875,"x":2320.995361328125,"z":47.86286163330078},"left":{"y":5910.6201171875,"x":2297.392822265625,"z":47.62699890136719}}},{"coords":{"y":6059.67724609375,"x":2169.66015625,"z":51.2234992980957},"offset":{"right":{"y":6073.08251953125,"x":2176.3896484375,"z":51.34687042236328},"left":{"y":6046.27197265625,"x":2162.9306640625,"z":51.10012817382812}}},{"coords":{"y":6341.2900390625,"x":1899.0771484375,"z":41.53639221191406},"offset":{"right":{"y":6355.640625,"x":1903.42041015625,"z":41.98582458496094},"left":{"y":6326.939453125,"x":1894.73388671875,"z":41.08695983886719}}},{"coords":{"y":6490.7607421875,"x":1274.52734375,"z":19.63617897033691},"offset":{"right":{"y":6505.75048828125,"x":1274.0196533203126,"z":19.85737991333007},"left":{"y":6475.77099609375,"x":1275.0350341796876,"z":19.41497802734375}}},{"coords":{"y":6574.8330078125,"x":366.66943359375,"z":27.27174568176269},"offset":{"right":{"y":6589.802734375,"x":365.7286682128906,"z":27.40035247802734},"left":{"y":6559.86328125,"x":367.6101989746094,"z":27.14313888549804}}}]', '{"Time":7811,"Holder":["Eagle","Martin"]}', 'MWU67055', 16014, 'LR-1563'),
	(5, 'Sandy Sprint', '[{"coords":{"y":3298.352294921875,"x":1813.463134765625,"z":42.15163421630859},"offset":{"right":{"y":3291.004150390625,"x":1800.3863525390626,"z":42.09524536132812},"left":{"y":3305.700439453125,"x":1826.5399169921876,"z":42.20802307128906}}},{"coords":{"y":3066.43408203125,"x":2052.270263671875,"z":45.77705001831055},"offset":{"right":{"y":3061.690673828125,"x":2038.041015625,"z":45.94425964355469},"left":{"y":3071.177490234375,"x":2066.49951171875,"z":45.6098403930664}}},{"coords":{"y":2974.31005859375,"x":1935.478759765625,"z":44.96016693115234},"offset":{"right":{"y":2988.71826171875,"x":1931.30712890625,"z":45.02074813842773},"left":{"y":2959.90185546875,"x":1939.650390625,"z":44.89958572387695}}},{"coords":{"y":2683.6396484375,"x":1312.041748046875,"z":36.91255950927734},"offset":{"right":{"y":2698.632568359375,"x":1312.48095703125,"z":36.76357269287109},"left":{"y":2668.646728515625,"x":1311.6025390625,"z":37.06154632568359}}},{"coords":{"y":2693.357666015625,"x":567.0875854492188,"z":41.29195404052734},"offset":{"right":{"y":2708.20556640625,"x":564.9596557617188,"z":41.39466094970703},"left":{"y":2678.509765625,"x":569.2155151367188,"z":41.18924713134765}}},{"coords":{"y":2675.177734375,"x":275.93023681640627,"z":43.66064453125},"offset":{"right":{"y":2678.938720703125,"x":289.4154968261719,"z":43.61955261230469},"left":{"y":2671.416748046875,"x":262.4449768066406,"z":43.70173645019531}}},{"coords":{"y":3453.23779296875,"x":352.7270812988281,"z":34.90702819824219},"offset":{"right":{"y":3440.494384765625,"x":358.5164489746094,"z":34.61088943481445},"left":{"y":3465.981201171875,"x":346.9377136230469,"z":35.20316696166992}}},{"coords":{"y":3536.307373046875,"x":972.491943359375,"z":33.17232513427734},"offset":{"right":{"y":3522.30908203125,"x":972.2723388671875,"z":33.20974731445312},"left":{"y":3550.3056640625,"x":972.7115478515625,"z":33.13490295410156}}},{"coords":{"y":3532.32421875,"x":1271.412841796875,"z":34.48173522949219},"offset":{"right":{"y":3517.57958984375,"x":1268.6585693359376,"z":34.37692260742187},"left":{"y":3547.06884765625,"x":1274.1671142578126,"z":34.5865478515625}}},{"coords":{"y":3493.4921875,"x":1703.1671142578126,"z":36.0347671508789},"offset":{"right":{"y":3484.56689453125,"x":1691.111572265625,"z":35.99868011474609},"left":{"y":3502.41748046875,"x":1715.22265625,"z":36.07085418701172}}}]', '{"Time":4116,"Holder":["Flash","Jones"]}', 'MWU67055', 4346, 'LR-3059'),
	(7, 'Oil Fields', '[{"offset":{"left":{"x":1177.96337890625,"y":-2596.357177734375,"z":36.16237640380859},"right":{"x":1196.03515625,"y":-2572.412353515625,"z":36.41602325439453}},"coords":{"x":1186.999267578125,"y":-2584.384765625,"z":36.28919982910156}},{"offset":{"left":{"x":991.363525390625,"y":-2605.066162109375,"z":43.35998916625976},"right":{"x":986.9150390625,"y":-2575.397705078125,"z":43.42391586303711}},"coords":{"x":989.1392822265625,"y":-2590.23193359375,"z":43.39195251464844}},{"offset":{"left":{"x":-920.599853515625,"y":-1839.8167724609376,"z":33.3326416015625},"right":{"x":-892.60009765625,"y":-1850.5858154296876,"z":33.13092803955078}},"coords":{"x":-906.5999755859375,"y":-1845.2012939453126,"z":33.23178482055664}},{"offset":{"left":{"x":-196.801513671875,"y":-1229.6368408203126,"z":36.81362152099609},"right":{"x":-196.7918701171875,"y":-1257.6309814453126,"z":36.23648071289062}},"coords":{"x":-196.79669189453126,"y":-1243.6339111328126,"z":36.52505111694336}},{"offset":{"left":{"x":946.2482299804688,"y":-1208.3758544921876,"z":41.84478378295898},"right":{"x":936.1934204101563,"y":-1234.5069580078126,"z":41.57941055297851}},"coords":{"x":941.2208251953125,"y":-1221.44140625,"z":41.71209716796875}},{"offset":{"left":{"x":1072.671875,"y":-1727.4188232421876,"z":35.35967254638672},"right":{"x":1047.280029296875,"y":-1739.1820068359376,"z":34.4195556640625}},"coords":{"x":1059.9759521484376,"y":-1733.3004150390626,"z":34.88961410522461}},{"offset":{"left":{"x":1314.42626953125,"y":-1609.845458984375,"z":51.33560943603515},"right":{"x":1331.19873046875,"y":-1632.264404296875,"z":51.61592102050781}},"coords":{"x":1322.8125,"y":-1621.054931640625,"z":51.47576522827148}},{"offset":{"left":{"x":1998.2109375,"y":-933.0066528320313,"z":78.42691802978516},"right":{"x":1976.27978515625,"y":-950.4143676757813,"z":78.41767120361328}},"coords":{"x":1987.245361328125,"y":-941.7105102539063,"z":78.42229461669922}},{"offset":{"left":{"x":1824.173583984375,"y":-1510.09326171875,"z":116.12367248535156},"right":{"x":1796.70751953125,"y":-1504.65087890625,"z":116.11027526855469}},"coords":{"x":1810.4405517578126,"y":-1507.3720703125,"z":116.11697387695313}},{"offset":{"left":{"x":1698.7166748046876,"y":-2122.71875,"z":106.66300964355469},"right":{"x":1673.8077392578126,"y":-2106.0078125,"z":106.11956787109375}},"coords":{"x":1686.26220703125,"y":-2114.36328125,"z":106.39128875732422}},{"offset":{"left":{"x":1475.451904296875,"y":-2593.96240234375,"z":48.08221054077148},"right":{"x":1445.885498046875,"y":-2588.91064453125,"z":47.52511978149414}},"coords":{"x":1460.668701171875,"y":-2591.4365234375,"z":47.80366516113281}},{"offset":{"left":{"x":1417.6387939453126,"y":-2588.880859375,"z":47.19997024536133},"right":{"x":1444.7630615234376,"y":-2576.0654296875,"z":47.37937545776367}},"coords":{"x":1431.200927734375,"y":-2582.47314453125,"z":47.2896728515625}},{"offset":{"left":{"x":1323.410888671875,"y":-2605.506591796875,"z":46.4998550415039},"right":{"x":1315.0302734375,"y":-2576.707275390625,"z":47.09686279296875}},"coords":{"x":1319.2205810546876,"y":-2591.10693359375,"z":46.79835891723633}}]', '{"Holder":["Flash","Jones"],"Time":8766}', 'MWU67055', 7954, 'LR-9962'),
	(8, 'Old Balily Run', '[{"coords":{"x":-2303.603759765625,"y":458.736328125,"z":173.73985290527345},"offset":{"left":{"x":-2312.584228515625,"y":459.328125,"z":173.7111358642578},"right":{"x":-2294.623291015625,"y":458.14453125,"z":173.76856994628907}}},{"coords":{"x":-1871.03857421875,"y":151.34165954589845,"z":79.73848724365235},"offset":{"left":{"x":-1881.10693359375,"y":140.2238311767578,"z":79.58602142333985},"right":{"x":-1860.97021484375,"y":162.45948791503907,"z":79.89095306396485}}},{"coords":{"x":-1632.638671875,"y":1045.000244140625,"z":152.42779541015626},"offset":{"left":{"x":-1647.033447265625,"y":1049.217529296875,"z":152.35865783691407},"right":{"x":-1618.243896484375,"y":1040.782958984375,"z":152.49693298339845}}},{"coords":{"x":-1216.3245849609376,"y":2575.010009765625,"z":15.07396221160888},"offset":{"left":{"x":-1225.7232666015626,"y":2585.385986328125,"z":14.99653053283691},"right":{"x":-1206.9259033203126,"y":2564.634033203125,"z":15.15139389038086}}},{"coords":{"x":166.75082397460938,"y":2907.158447265625,"z":46.21556854248047},"offset":{"left":{"x":161.659912109375,"y":2913.329345703125,"z":46.16746139526367},"right":{"x":171.84173583984376,"y":2900.987548828125,"z":46.26367568969726}}},{"coords":{"x":507.66046142578127,"y":3498.5048828125,"z":33.52328109741211},"offset":{"left":{"x":506.6119079589844,"y":3506.435791015625,"z":33.48161697387695},"right":{"x":508.7090148925781,"y":3490.573974609375,"z":33.56494522094726}}},{"coords":{"x":1398.4112548828126,"y":3584.748291015625,"z":34.24938583374023},"offset":{"left":{"x":1395.8438720703126,"y":3592.3251953125,"z":34.23244476318359},"right":{"x":1400.9786376953126,"y":3577.17138671875,"z":34.26632690429687}}},{"coords":{"x":1754.2735595703126,"y":3760.3095703125,"z":33.09080123901367},"offset":{"left":{"x":1747.8089599609376,"y":3770.419189453125,"z":33.05019760131836},"right":{"x":1760.7381591796876,"y":3750.199951171875,"z":33.13140487670898}}},{"coords":{"x":1987.4290771484376,"y":3854.923095703125,"z":31.64405822753906},"offset":{"left":{"x":1997.6256103515626,"y":3861.248291015625,"z":31.49402618408203},"right":{"x":1977.2325439453126,"y":3848.597900390625,"z":31.79409027099609}}},{"coords":{"x":2139.44580078125,"y":3765.4658203125,"z":32.46573638916015},"offset":{"left":{"x":2133.6640625,"y":3775.980712890625,"z":32.36689376831055},"right":{"x":2145.2275390625,"y":3754.950927734375,"z":32.56457901000976}}},{"coords":{"x":2734.101318359375,"y":4391.1044921875,"z":47.83199310302734},"offset":{"left":{"x":2730.8515625,"y":4402.65625,"z":47.80583953857422},"right":{"x":2737.35107421875,"y":4379.552734375,"z":47.85814666748047}}},{"coords":{"x":2916.574462890625,"y":3849.23828125,"z":51.7775993347168},"offset":{"left":{"x":2929.557861328125,"y":3848.582763671875,"z":51.72611236572265},"right":{"x":2903.591064453125,"y":3849.893798828125,"z":51.82908630371094}}},{"coords":{"x":2515.653564453125,"y":2759.2666015625,"z":44.98862075805664},"offset":{"left":{"x":2524.27490234375,"y":2764.3330078125,"z":45.06279754638672},"right":{"x":2507.0322265625,"y":2754.2001953125,"z":44.91444396972656}}},{"coords":{"x":2537.95703125,"y":1489.47265625,"z":30.98121833801269},"offset":{"left":{"x":2547.747314453125,"y":1487.435302734375,"z":30.95317268371582},"right":{"x":2528.166748046875,"y":1491.510009765625,"z":31.00926399230957}}},{"coords":{"x":2483.367431640625,"y":832.2116088867188,"z":92.91258239746094},"offset":{"left":{"x":2494.065673828125,"y":834.7643432617188,"z":92.74211120605469},"right":{"x":2472.669189453125,"y":829.6588745117188,"z":93.08305358886719}}},{"coords":{"x":1814.3516845703126,"y":-815.7123413085938,"z":75.41026306152344},"offset":{"left":{"x":1819.276611328125,"y":-822.0166625976563,"z":75.43360900878906},"right":{"x":1809.4267578125,"y":-809.4080200195313,"z":75.38691711425781}}},{"coords":{"x":67.61965942382813,"y":-1088.59814453125,"z":28.6750259399414},"offset":{"left":{"x":53.75649642944336,"y":-1082.869873046875,"z":28.65966033935547},"right":{"x":81.48282623291016,"y":-1094.326416015625,"z":28.69039154052734}}},{"coords":{"x":-129.20166015625,"y":-913.01708984375,"z":28.61654090881347},"offset":{"left":{"x":-134.5787353515625,"y":-927.0197143554688,"z":28.5029125213623},"right":{"x":-123.8245849609375,"y":-899.0144653320313,"z":28.73016929626465}}},{"coords":{"x":-251.65536499023438,"y":-757.9234619140625,"z":32.15217971801758},"offset":{"left":{"x":-264.3175354003906,"y":-751.95458984375,"z":31.94794654846191},"right":{"x":-238.99319458007813,"y":-763.892333984375,"z":32.35641479492187}}},{"coords":{"x":-382.620849609375,"y":-387.7121276855469,"z":31.14543151855468},"offset":{"left":{"x":-384.7833251953125,"y":-402.555419921875,"z":31.13115119934082},"right":{"x":-380.4583740234375,"y":-372.86883544921877,"z":31.15971183776855}}},{"coords":{"x":-851.8457641601563,"y":-292.03875732421877,"z":39.1083984375},"offset":{"left":{"x":-858.4793090820313,"y":-304.36273193359377,"z":38.76811218261719},"right":{"x":-845.2122192382813,"y":-279.71478271484377,"z":39.44868469238281}}},{"coords":{"x":-1491.6231689453126,"y":53.20114517211914,"z":53.47977066040039},"offset":{"left":{"x":-1489.355712890625,"y":40.40319061279297,"z":53.21347427368164},"right":{"x":-1493.890625,"y":65.99909973144531,"z":53.74606704711914}}},{"coords":{"x":-1922.76904296875,"y":92.2842788696289,"z":87.09590148925781},"offset":{"left":{"x":-1925.9588623046876,"y":79.68173217773438,"z":87.07402038574219},"right":{"x":-1919.5792236328126,"y":104.88682556152344,"z":87.11778259277344}}},{"coords":{"x":-2304.21875,"y":378.5677795410156,"z":173.73977661132813},"offset":{"left":{"x":-2302.4130859375,"y":386.36126708984377,"z":173.70899963378907},"right":{"x":-2306.0244140625,"y":370.7742919921875,"z":173.7705535888672}}}]', '{"Time":24310,"Holder":["Shawn","Carter"]}', 'MFX57984', 17939, 'LR-7001'),
	(9, 'Ocean Surge', '[{"coords":{"x":-2305.160888671875,"y":457.8839416503906,"z":173.81593322753907},"offset":{"left":{"x":-2313.114013671875,"y":458.74755859375,"z":173.82887268066407},"right":{"x":-2297.207763671875,"y":457.02032470703127,"z":173.80299377441407}}},{"coords":{"x":-1866.8126220703126,"y":148.1926727294922,"z":79.65096282958985},"offset":{"left":{"x":-1877.7763671875,"y":137.95570373535157,"z":79.6224136352539},"right":{"x":-1855.848876953125,"y":158.4296417236328,"z":79.67951202392578}}},{"coords":{"x":-1623.136474609375,"y":1096.1649169921876,"z":151.67041015625},"offset":{"left":{"x":-1638.1358642578126,"y":1096.3057861328126,"z":151.6691131591797},"right":{"x":-1608.1370849609376,"y":1096.0240478515626,"z":151.6717071533203}}},{"coords":{"x":-1527.0667724609376,"y":2130.85205078125,"z":55.4130744934082},"offset":{"left":{"x":-1535.276123046875,"y":2127.16357421875,"z":55.44881057739258},"right":{"x":-1518.857421875,"y":2134.54052734375,"z":55.37733840942383}}},{"coords":{"x":-1787.6636962890626,"y":2410.584716796875,"z":30.3468074798584},"offset":{"left":{"x":-1781.417236328125,"y":2396.947265625,"z":30.39459419250488},"right":{"x":-1793.91015625,"y":2424.22216796875,"z":30.29902076721191}}},{"coords":{"x":-2808.960693359375,"y":2206.740966796875,"z":27.61438751220703},"offset":{"left":{"x":-2801.7919921875,"y":2193.565185546875,"z":27.53851890563965},"right":{"x":-2816.12939453125,"y":2219.916748046875,"z":27.69025611877441}}},{"coords":{"x":-3094.778076171875,"y":1298.399658203125,"z":19.55152511596679},"offset":{"left":{"x":-3080.025146484375,"y":1295.6898193359376,"z":19.64483833312988},"right":{"x":-3109.531005859375,"y":1301.1094970703126,"z":19.45821189880371}}},{"coords":{"x":-2564.604248046875,"y":-168.06613159179688,"z":19.92599487304687},"offset":{"left":{"x":-2557.004638671875,"y":-155.13377380371095,"z":19.91147422790527},"right":{"x":-2572.203857421875,"y":-180.9984893798828,"z":19.94051551818847}}},{"coords":{"x":-2117.641845703125,"y":-224.76829528808595,"z":17.98211669921875},"offset":{"left":{"x":-2128.388916015625,"y":-214.3179931640625,"z":18.5223388671875},"right":{"x":-2106.894775390625,"y":-235.21859741210938,"z":17.44189453125}}},{"coords":{"x":-1622.097412109375,"y":-295.8580627441406,"z":51.235595703125},"offset":{"left":{"x":-1635.881591796875,"y":-289.9427490234375,"z":51.30245590209961},"right":{"x":-1608.313232421875,"y":-301.77337646484377,"z":51.16873550415039}}},{"coords":{"x":-1648.932373046875,"y":-51.5435791015625,"z":59.06063079833984},"offset":{"left":{"x":-1660.15478515625,"y":-61.49636459350586,"z":59.08095550537109},"right":{"x":-1637.7099609375,"y":-41.59079360961914,"z":59.04030609130859}}},{"coords":{"x":-1844.6234130859376,"y":75.15811157226563,"z":76.65589141845703},"offset":{"left":{"x":-1851.8265380859376,"y":64.33625030517578,"z":76.6959228515625},"right":{"x":-1837.4202880859376,"y":85.97997283935547,"z":76.61585998535156}}},{"coords":{"x":-2316.67822265625,"y":399.5582580566406,"z":173.8152618408203},"offset":{"left":{"x":-2309.6083984375,"y":395.81414794921877,"z":173.8154296875},"right":{"x":-2323.748046875,"y":403.3023681640625,"z":173.81509399414063}}},{"coords":{"x":-2291.49853515625,"y":384.8523864746094,"z":173.81573486328126},"offset":{"left":{"x":-2298.75048828125,"y":388.2300720214844,"z":173.81605529785157},"right":{"x":-2284.24658203125,"y":381.4747009277344,"z":173.81541442871095}}}]', '{"Time":10051,"Holder":["Flash","Jones"]}', 'PLT89010', 8548, 'LR-9743'),
	(10, 'Legion Loop', '[{"coords":{"z":29.0648021697998,"y":-1035.678955078125,"x":198.4360809326172},"offset":{"left":{"z":29.04830932617187,"y":-1024.3834228515626,"x":202.48703002929688},"right":{"z":29.08129501342773,"y":-1046.9744873046876,"x":194.3851318359375}}},{"coords":{"z":53.24836349487305,"y":-881.6823120117188,"x":1162.3143310546876},"offset":{"left":{"z":53.33517456054687,"y":-879.4788818359375,"x":1150.5186767578126},"right":{"z":53.16155242919922,"y":-883.8857421875,"x":1174.1099853515626}}},{"coords":{"z":63.35402297973633,"y":-732.1881103515625,"x":1269.0555419921876},"offset":{"left":{"z":63.40460205078125,"y":-725.2255249023438,"x":1259.2821044921876},"right":{"z":63.3034439086914,"y":-739.1506958007813,"x":1278.8289794921876}}},{"coords":{"z":68.81056213378906,"y":-396.77813720703127,"x":1263.56103515625},"offset":{"left":{"z":69.04403686523438,"y":-405.807373046875,"x":1255.6605224609376},"right":{"z":68.57708740234375,"y":-387.7489013671875,"x":1271.4615478515626}}},{"coords":{"z":65.97603607177735,"y":-420.6631164550781,"x":1043.976318359375},"offset":{"left":{"z":66.1888656616211,"y":-429.83929443359377,"x":1051.706298828125},"right":{"z":65.7632064819336,"y":-411.4869384765625,"x":1036.246337890625}}},{"coords":{"z":57.17624282836914,"y":-681.1473999023438,"x":985.2634887695313},"offset":{"left":{"z":57.42856216430664,"y":-676.2673950195313,"x":996.2235107421875},"right":{"z":56.92392349243164,"y":-686.0274047851563,"x":974.303466796875}}},{"coords":{"z":59.53976058959961,"y":-708.2460327148438,"x":1196.2657470703126},"offset":{"left":{"z":59.44791030883789,"y":-711.2796020507813,"x":1184.6558837890626},"right":{"z":59.63161087036133,"y":-705.2124633789063,"x":1207.8756103515626}}},{"coords":{"z":69.35942840576172,"y":-227.981689453125,"x":1081.2083740234376},"offset":{"left":{"z":69.38027954101563,"y":-242.02853393554688,"x":1075.9466552734376},"right":{"z":69.33857727050781,"y":-213.93484497070313,"x":1086.4700927734376}}},{"coords":{"z":86.89896392822266,"y":8.43898391723632,"x":480.0473327636719},"offset":{"left":{"z":86.64427947998047,"y":1.96532678604125,"x":493.5760803222656},"right":{"z":87.15364837646485,"y":14.91264152526855,"x":466.5185852050781}}},{"coords":{"z":43.98017501831055,"y":-436.5708312988281,"x":305.51202392578127},"offset":{"left":{"z":44.0178337097168,"y":-438.66009521484377,"x":320.3657531738281},"right":{"z":43.9425163269043,"y":-434.4815673828125,"x":290.6582946777344}}},{"coords":{"z":30.28319931030273,"y":-894.8055419921875,"x":144.52859497070313},"offset":{"left":{"z":30.23693084716797,"y":-899.61865234375,"x":158.7353515625},"right":{"z":30.3294677734375,"y":-889.992431640625,"x":130.32183837890626}}},{"coords":{"z":29.09170150756836,"y":-1018.6337890625,"x":151.65504455566407},"offset":{"left":{"z":29.0776081085205,"y":-1004.5111694335938,"x":156.7099609375},"right":{"z":29.10579490661621,"y":-1032.75634765625,"x":146.60012817382813}}}]', '{"Time":4856,"Holder":["Shawn","Carter"]}', 'PLT89010', 4427, 'LR-3087'),
	(11, 'Casino Rush', '[{"coords":{"z":77.33000183105469,"y":917.7433471679688,"x":1560.6856689453126},"offset":{"left":{"z":77.2872085571289,"y":922.3098754882813,"x":1546.397705078125},"right":{"z":77.37279510498047,"y":913.1768188476563,"x":1574.9736328125}}},{"coords":{"z":83.22549438476563,"y":1615.1966552734376,"x":1804.76220703125},"offset":{"left":{"z":83.21365356445313,"y":1625.0640869140626,"x":1797.933349609375},"right":{"z":83.23733520507813,"y":1605.3292236328126,"x":1811.591064453125}}},{"coords":{"z":86.466064453125,"y":978.1752319335938,"x":2419.525146484375},"offset":{"left":{"z":86.76270294189453,"y":983.84326171875,"x":2430.097900390625},"right":{"z":86.16942596435547,"y":972.5072021484375,"x":2408.952392578125}}},{"coords":{"z":96.32316589355469,"y":41.56061172485351,"x":2497.47412109375},"offset":{"left":{"z":96.37593078613281,"y":38.5255012512207,"x":2509.083740234375},"right":{"z":96.27040100097656,"y":44.59572219848633,"x":2485.864501953125}}},{"coords":{"z":84.36151885986328,"y":-253.58438110351563,"x":2370.912353515625},"offset":{"left":{"z":84.33329772949219,"y":-258.50762939453127,"x":2375.888427734375},"right":{"z":84.38973999023438,"y":-248.6611328125,"x":2365.936279296875}}},{"coords":{"z":68.90031433105469,"y":-515.2843627929688,"x":2476.943359375},"offset":{"left":{"z":68.867431640625,"y":-504.475341796875,"x":2487.343505859375},"right":{"z":68.93319702148438,"y":-526.0933837890625,"x":2466.543212890625}}},{"coords":{"z":66.47288513183594,"y":-745.2146606445313,"x":2218.44091796875},"offset":{"left":{"z":66.46172332763672,"y":-756.5257568359375,"x":2228.292724609375},"right":{"z":66.48404693603516,"y":-733.903564453125,"x":2208.589111328125}}},{"coords":{"z":85.28899383544922,"y":-1303.435791015625,"x":1706.8756103515626},"offset":{"left":{"z":85.37798309326172,"y":-1316.7850341796876,"x":1713.7158203125},"right":{"z":85.20000457763672,"y":-1290.0865478515626,"x":1700.035400390625}}},{"coords":{"z":51.98175811767578,"y":-1589.51904296875,"x":1319.16552734375},"offset":{"left":{"z":52.18318557739258,"y":-1599.06103515625,"x":1307.593505859375},"right":{"z":51.78033065795898,"y":-1579.97705078125,"x":1330.737548828125}}},{"coords":{"z":35.58929443359375,"y":-1222.3162841796876,"x":1243.2716064453126},"offset":{"left":{"z":35.22077941894531,"y":-1224.2420654296876,"x":1228.4002685546876},"right":{"z":35.95780944824219,"y":-1220.3905029296876,"x":1258.1429443359376}}},{"coords":{"z":60.35396957397461,"y":-687.7925415039063,"x":1193.7603759765626},"offset":{"left":{"z":60.30659103393555,"y":-690.4451293945313,"x":1178.996826171875},"right":{"z":60.40134811401367,"y":-685.1399536132813,"x":1208.52392578125}}},{"coords":{"z":68.82682037353516,"y":-307.7101745605469,"x":1209.374755859375},"offset":{"left":{"z":68.81124114990235,"y":-313.63360595703127,"x":1195.5938720703126},"right":{"z":68.84239959716797,"y":-301.7867431640625,"x":1223.1556396484376}}},{"coords":{"z":80.12395477294922,"y":-89.2914047241211,"x":848.537841796875},"offset":{"left":{"z":80.38072204589844,"y":-101.73561096191406,"x":840.1666870117188},"right":{"z":79.8671875,"y":-76.84719848632813,"x":856.9089965820313}}},{"coords":{"z":80.64620971679688,"y":135.6756591796875,"x":955.7906494140625},"offset":{"left":{"z":80.69879913330078,"y":146.15782165527345,"x":945.0611572265625},"right":{"z":80.59362030029297,"y":125.19349670410156,"x":966.5201416015625}}},{"coords":{"z":91.184814453125,"y":312.3266906738281,"x":1156.2618408203126},"offset":{"left":{"z":91.34010314941406,"y":316.3789978027344,"x":1150.55615234375},"right":{"z":91.02952575683594,"y":308.2743835449219,"x":1161.967529296875}}},{"coords":{"z":88.62165069580078,"y":444.9537353515625,"x":1194.0318603515626},"offset":{"left":{"z":88.5842514038086,"y":449.0503234863281,"x":1188.3558349609376},"right":{"z":88.65904998779297,"y":440.8571472167969,"x":1199.7078857421876}}},{"coords":{"z":76.87715148925781,"y":781.3313598632813,"x":1475.607666015625},"offset":{"left":{"z":76.94490814208985,"y":786.9735717773438,"x":1467.3516845703126},"right":{"z":76.80939483642578,"y":775.6891479492188,"x":1483.8636474609376}}}]', '{"Holder":["Ivan","Kravchenko"],"Time":5757}', 'PLT89010', 7563, 'LR-9381'),
	(13, 'City Limits 2.0', '[{"coords":{"x":50.84841918945312,"y":-691.865478515625,"z":30.76034545898437},"offset":{"right":{"x":40.5076904296875,"y":-688.118408203125,"z":30.591064453125},"left":{"x":61.18914794921875,"y":-695.612548828125,"z":30.92962646484375}}},{"coords":{"x":-18.69778060913086,"y":-908.9949340820313,"z":28.76905632019043},"offset":{"right":{"x":-29.90427207946777,"y":-904.7037353515625,"z":28.77091407775879},"left":{"x":-7.49128913879394,"y":-913.2861328125,"z":28.76719856262207}}},{"coords":{"x":-103.05937194824219,"y":-1264.5926513671876,"z":28.48781776428222},"offset":{"right":{"x":-118.05195617675781,"y":-1265.0643310546876,"z":28.49261093139648},"left":{"x":-88.06678771972656,"y":-1264.1209716796876,"z":28.48302459716797}}},{"coords":{"x":9.91887283325195,"y":-1368.829833984375,"z":28.50812721252441},"offset":{"right":{"x":9.81641769409179,"y":-1383.8294677734376,"z":28.51326942443847},"left":{"x":10.02132797241211,"y":-1353.8302001953126,"z":28.50298500061035}}},{"coords":{"x":-2.06949710845947,"y":-1696.93408203125,"z":28.47877120971679},"offset":{"right":{"x":-6.61293220520019,"y":-1682.638671875,"z":28.49109077453613},"left":{"x":2.47393798828125,"y":-1711.2294921875,"z":28.46645164489746}}},{"coords":{"x":-75.64689636230469,"y":-1565.32275390625,"z":30.57229995727539},"offset":{"right":{"x":-65.92035675048828,"y":-1553.9036865234376,"z":30.56412696838379},"left":{"x":-85.3734359741211,"y":-1576.7418212890626,"z":30.58047294616699}}},{"coords":{"x":-277.2925720214844,"y":-1236.5849609375,"z":26.60694694519043},"offset":{"right":{"x":-262.296142578125,"y":-1236.9112548828126,"z":26.58783149719238},"left":{"x":-292.28900146484377,"y":-1236.2586669921876,"z":26.62606239318847}}},{"coords":{"x":-170.4582061767578,"y":-1141.64794921875,"z":22.4573974609375},"offset":{"right":{"x":-170.89210510253907,"y":-1156.6417236328126,"z":22.45995903015136},"left":{"x":-170.02430725097657,"y":-1126.6541748046876,"z":22.45483589172363}}},{"coords":{"x":-57.28391647338867,"y":-1016.39990234375,"z":28.00422477722168},"offset":{"right":{"x":-43.11578369140625,"y":-1021.3257446289063,"z":28.01899147033691},"left":{"x":-71.4520492553711,"y":-1011.4740600585938,"z":27.98945808410644}}},{"coords":{"x":83.87727355957031,"y":-991.8042602539063,"z":28.54975318908691},"offset":{"right":{"x":77.41844940185547,"y":-1005.3424682617188,"z":28.54883575439453},"left":{"x":90.33609771728516,"y":-978.2660522460938,"z":28.55067062377929}}},{"coords":{"x":417.7452697753906,"y":-1068.3656005859376,"z":28.35550498962402},"offset":{"right":{"x":417.2590026855469,"y":-1079.3548583984376,"z":28.35503959655761},"left":{"x":418.2315368652344,"y":-1057.3763427734376,"z":28.35597038269043}}},{"coords":{"x":500.0859680175781,"y":-992.290771484375,"z":26.86939239501953},"offset":{"right":{"x":512.0826416015625,"y":-992.4190673828125,"z":27.12047386169433},"left":{"x":488.08929443359377,"y":-992.1624755859375,"z":26.61831092834472}}},{"coords":{"x":508.9902038574219,"y":-717.5132446289063,"z":23.98577308654785},"offset":{"right":{"x":522.9269409179688,"y":-718.7200927734375,"z":23.42847633361816},"left":{"x":495.053466796875,"y":-716.306396484375,"z":24.54306983947754}}},{"coords":{"x":305.4361267089844,"y":-648.0159301757813,"z":28.46065330505371},"offset":{"right":{"x":310.3547668457031,"y":-633.8482666015625,"z":28.1700382232666},"left":{"x":300.5174865722656,"y":-662.18359375,"z":28.75126838684082}}},{"coords":{"x":71.10936737060547,"y":-638.6716918945313,"z":30.76665687561035},"offset":{"right":{"x":57.9086685180664,"y":-634.0123291015625,"z":30.58815193176269},"left":{"x":84.31006622314453,"y":-643.3310546875,"z":30.945161819458}}}]', '{"Time":4180,"Holder":["Ivan","Kravchenko"]}', 'MFX57984', 3246, 'LR-5261'),
	(14, 'Sahara Sprint', '[{"coords":{"x":2196.6513671875,"y":3700.725341796875,"z":36.56770706176758},"offset":{"left":{"x":2193.6875,"y":3707.06103515625,"z":36.84314727783203},"right":{"x":2199.615234375,"y":3694.3896484375,"z":36.29226684570312}}},{"coords":{"x":2334.96630859375,"y":3799.456787109375,"z":34.73619079589844},"offset":{"left":{"x":2328.74267578125,"y":3796.253173828125,"z":34.67487335205078},"right":{"x":2341.18994140625,"y":3802.660400390625,"z":34.79750823974609}}},{"coords":{"x":2480.093994140625,"y":4065.8818359375,"z":37.13202667236328},"offset":{"left":{"x":2473.56591796875,"y":4068.408447265625,"z":37.13565063476562},"right":{"x":2486.6220703125,"y":4063.355224609375,"z":37.12840270996094}}},{"coords":{"x":2460.21533203125,"y":4191.94970703125,"z":36.48013687133789},"offset":{"left":{"x":2453.815185546875,"y":4189.11474609375,"z":36.47282028198242},"right":{"x":2466.615478515625,"y":4194.78466796875,"z":36.48745346069336}}},{"coords":{"x":2204.8193359375,"y":4743.06689453125,"z":39.98266983032226},"offset":{"left":{"x":2203.0595703125,"y":4736.29150390625,"z":40.00281143188476},"right":{"x":2206.5791015625,"y":4749.84228515625,"z":39.96252822875976}}},{"coords":{"x":1800.1456298828126,"y":4572.6064453125,"z":35.92937850952148},"offset":{"left":{"x":1801.08740234375,"y":4565.669921875,"z":35.91913986206055},"right":{"x":1799.203857421875,"y":4579.54296875,"z":35.93961715698242}}},{"coords":{"x":1698.239013671875,"y":4961.4755859375,"z":42.87193298339844},"offset":{"left":{"x":1695.305419921875,"y":4967.83056640625,"z":42.94635391235351},"right":{"x":1701.172607421875,"y":4955.12060546875,"z":42.79751205444336}}},{"coords":{"x":1909.7078857421876,"y":5136.08544921875,"z":44.25415420532226},"offset":{"left":{"x":1905.45556640625,"y":5141.6455078125,"z":44.29284286499023},"right":{"x":1913.960205078125,"y":5130.525390625,"z":44.2154655456543}}},{"coords":{"x":2038.3985595703126,"y":5047.15771484375,"z":40.82244110107422},"offset":{"left":{"x":2043.646728515625,"y":5051.78955078125,"z":40.80404663085937},"right":{"x":2033.150390625,"y":5042.52587890625,"z":40.84083557128906}}},{"coords":{"x":2149.1123046875,"y":4931.37744140625,"z":40.23798751831055},"offset":{"left":{"x":2153.919921875,"y":4936.46533203125,"z":40.23209381103515},"right":{"x":2144.3046875,"y":4926.28955078125,"z":40.24388122558594}}},{"coords":{"x":2466.696533203125,"y":5113.7890625,"z":45.96878433227539},"offset":{"left":{"x":2470.4296875,"y":5119.71044921875,"z":45.95751571655273},"right":{"x":2462.96337890625,"y":5107.86767578125,"z":45.98005294799805}}},{"coords":{"x":2732.817626953125,"y":5075.50927734375,"z":41.62898254394531},"offset":{"left":{"x":2738.79296875,"y":5076.05322265625,"z":41.63788986206055},"right":{"x":2726.84228515625,"y":5074.96533203125,"z":41.62007522583008}}},{"coords":{"x":2814.0859375,"y":4886.23046875,"z":38.79093170166015},"offset":{"left":{"x":2819.53515625,"y":4888.7412109375,"z":38.76749038696289},"right":{"x":2808.63671875,"y":4883.7197265625,"z":38.81437301635742}}},{"coords":{"x":2979.81201171875,"y":4507.580078125,"z":47.30458068847656},"offset":{"left":{"x":2985.74267578125,"y":4506.67236328125,"z":47.35541534423828},"right":{"x":2973.88134765625,"y":4508.48779296875,"z":47.25374603271484}}},{"coords":{"x":2792.4755859375,"y":4349.28515625,"z":49.15657424926758},"offset":{"left":{"x":2799.050048828125,"y":4351.6884765625,"z":49.15786743164062},"right":{"x":2785.901123046875,"y":4346.8818359375,"z":49.15528106689453}}},{"coords":{"x":2915.46142578125,"y":3936.9208984375,"z":51.2470474243164},"offset":{"left":{"x":2921.445068359375,"y":3937.362548828125,"z":51.25763320922851},"right":{"x":2909.477783203125,"y":3936.479248046875,"z":51.2364616394043}}},{"coords":{"x":2847.529541015625,"y":3567.718994140625,"z":52.82328033447265},"offset":{"left":{"x":2853.15966796875,"y":3565.6455078125,"z":52.85721206665039},"right":{"x":2841.8994140625,"y":3569.79248046875,"z":52.78934860229492}}},{"coords":{"x":2629.338134765625,"y":3130.85791015625,"z":48.8353385925293},"offset":{"left":{"x":2633.26416015625,"y":3127.76171875,"z":48.79977798461914},"right":{"x":2625.412109375,"y":3133.9541015625,"z":48.87089920043945}}},{"coords":{"x":2333.7978515625,"y":2980.70361328125,"z":47.41157531738281},"offset":{"left":{"x":2331.31640625,"y":2974.158447265625,"z":47.45832061767578},"right":{"x":2336.279296875,"y":2987.248779296875,"z":47.36483001708984}}},{"coords":{"x":2191.84765625,"y":3248.55908203125,"z":46.99310684204101},"offset":{"left":{"x":2190.453857421875,"y":3242.72314453125,"z":46.98172378540039},"right":{"x":2193.241455078125,"y":3254.39501953125,"z":47.00448989868164}}},{"coords":{"x":1924.232421875,"y":3315.93212890625,"z":44.28841018676758},"offset":{"left":{"x":1923.3209228515626,"y":3310.001953125,"z":44.3380012512207},"right":{"x":1925.1439208984376,"y":3321.8623046875,"z":44.23881912231445}}},{"coords":{"x":1755.07421875,"y":3407.57177734375,"z":37.65645980834961},"offset":{"left":{"x":1750.671875,"y":3405.201171875,"z":37.67801666259765},"right":{"x":1759.4765625,"y":3409.9423828125,"z":37.63490295410156}}},{"coords":{"x":1892.5853271484376,"y":3621.939453125,"z":33.49467086791992},"offset":{"left":{"x":1889.7645263671876,"y":3627.23486328125,"z":33.52196502685547},"right":{"x":1895.4061279296876,"y":3616.64404296875,"z":33.46737670898437}}},{"coords":{"x":2080.421630859375,"y":3693.5908203125,"z":33.69281005859375},"offset":{"left":{"x":2085.371337890625,"y":3696.980224609375,"z":33.80163192749023},"right":{"x":2075.471923828125,"y":3690.201416015625,"z":33.58398818969726}}},{"coords":{"x":2196.295654296875,"y":3699.6845703125,"z":36.51555633544922},"offset":{"left":{"x":2193.585205078125,"y":3705.035400390625,"z":36.36708068847656},"right":{"x":2199.006103515625,"y":3694.333740234375,"z":36.66403198242187}}}]', NULL, 'PFL74854', 7109, 'LR-4353'),
	(15, 'Grand Prix 6.9', '[{"offset":{"left":{"x":-28.31004333496093,"z":30.95948219299316,"y":6327.99755859375},"right":{"x":-47.08826446533203,"z":30.93389320373535,"y":6345.97998046875}},"coords":{"x":-37.69915390014648,"z":30.94668769836425,"y":6336.98876953125}},{"offset":{"left":{"x":-250.77850341796876,"z":30.76591300964355,"y":6104.74462890625},"right":{"x":-272.02386474609377,"z":31.39630317687988,"y":6125.91650390625}},"coords":{"x":-261.40118408203127,"z":31.08110809326172,"y":6115.33056640625}},{"offset":{"left":{"x":-1629.21630859375,"z":60.6246452331543,"y":4849.36474609375},"right":{"x":-1649.662841796875,"z":60.42582321166992,"y":4871.31689453125}},"coords":{"x":-1639.4395751953126,"z":60.52523422241211,"y":4860.3408203125}},{"offset":{"left":{"x":-2281.296875,"z":39.74032592773437,"y":4183.19287109375},"right":{"x":-2307.259765625,"z":39.84456634521484,"y":4198.22314453125}},"coords":{"x":-2294.2783203125,"z":39.79244613647461,"y":4190.7080078125}},{"offset":{"left":{"x":-2387.33251953125,"z":17.79304504394531,"y":3562.793212890625},"right":{"x":-2407.0849609375,"z":17.82679748535156,"y":3559.656494140625}},"coords":{"x":-2397.208740234375,"z":17.80992126464843,"y":3561.224853515625}},{"offset":{"left":{"x":-2224.05712890625,"z":33.1697998046875,"y":3375.53955078125},"right":{"x":-2223.451171875,"z":32.82936859130859,"y":3359.5546875}},"coords":{"x":-2223.754150390625,"z":32.99958419799805,"y":3367.547119140625}},{"offset":{"left":{"x":-1923.6033935546876,"z":32.65542984008789,"y":3261.207275390625},"right":{"x":-1938.5787353515626,"z":32.5233268737793,"y":3237.548583984375}},"coords":{"x":-1931.091064453125,"z":32.58937835693359,"y":3249.3779296875}},{"offset":{"left":{"x":-1535.8070068359376,"z":17.1526985168457,"y":2762.163330078125},"right":{"x":-1553.7967529296876,"z":17.72092056274414,"y":2740.714599609375}},"coords":{"x":-1544.8018798828126,"z":17.43680953979492,"y":2751.43896484375}},{"offset":{"left":{"x":-1237.8153076171876,"z":16.19852828979492,"y":2571.229736328125},"right":{"x":-1217.5596923828126,"z":16.06636428833007,"y":2549.100830078125}},"coords":{"x":-1227.6875,"z":16.1324462890625,"y":2560.165283203125}},{"offset":{"left":{"x":-458.21337890625,"z":34.71709442138672,"y":2862.997802734375},"right":{"x":-454.18603515625,"z":34.5494384765625,"y":2839.338623046875}},"coords":{"x":-456.19970703125,"z":34.63326644897461,"y":2851.168212890625}},{"offset":{"left":{"x":147.0385284423828,"z":47.66905975341797,"y":2905.402587890625},"right":{"x":161.0501251220703,"z":47.64218139648437,"y":2888.441650390625}},"coords":{"x":154.04432678222657,"z":47.65562057495117,"y":2896.922119140625}},{"offset":{"left":{"x":1400.1614990234376,"z":34.70790100097656,"y":3594.77099609375},"right":{"x":1407.2142333984376,"z":34.49917602539062,"y":3576.05712890625}},"coords":{"x":1403.6878662109376,"z":34.60353851318359,"y":3585.4140625}},{"offset":{"left":{"x":1749.1246337890626,"z":33.54624557495117,"y":3768.65087890625},"right":{"x":1757.8365478515626,"z":33.40887832641601,"y":3750.6484375}},"coords":{"x":1753.4805908203126,"z":33.47756195068359,"y":3759.649658203125}},{"offset":{"left":{"x":1940.5650634765626,"z":32.34524154663086,"y":3880.112548828125},"right":{"x":1950.7811279296876,"z":31.59104919433593,"y":3860.642822265625}},"coords":{"x":1945.673095703125,"z":31.9681453704834,"y":3870.377685546875}},{"offset":{"left":{"x":2024.7427978515626,"z":31.84861755371093,"y":3811.683837890625},"right":{"x":2005.8560791015626,"z":32.00854873657226,"y":3800.402587890625}},"coords":{"x":2015.2994384765626,"z":31.9285831451416,"y":3806.043212890625}},{"offset":{"left":{"x":2160.00048828125,"z":33.00051879882812,"y":3788.92431640625},"right":{"x":2169.5693359375,"z":33.05666351318359,"y":3771.36181640625}},"coords":{"x":2164.784912109375,"z":33.02859115600586,"y":3780.14306640625}},{"offset":{"left":{"x":2439.5888671875,"z":36.73822021484375,"y":4245.4443359375},"right":{"x":2457.55322265625,"z":36.54783630371094,"y":4246.5615234375}},"coords":{"x":2448.571044921875,"z":36.64302825927734,"y":4246.0029296875}},{"offset":{"left":{"x":2099.364501953125,"z":40.94599151611328,"y":4707.18115234375},"right":{"x":2084.865478515625,"z":40.75820922851562,"y":4720.95654296875}},"coords":{"x":2092.114990234375,"z":40.85210037231445,"y":4714.06884765625}},{"offset":{"left":{"x":1690.8016357421876,"z":43.20265197753906,"y":4628.5048828125},"right":{"x":1710.9759521484376,"z":43.15700531005859,"y":4641.5048828125}},"coords":{"x":1700.8887939453126,"z":43.17982864379883,"y":4635.0048828125}},{"offset":{"left":{"x":1876.0919189453126,"z":47.86138153076172,"y":5124.82763671875},"right":{"x":1890.7564697265626,"z":47.65648651123047,"y":5105.82958984375}},"coords":{"x":1883.4241943359376,"z":47.75893402099609,"y":5115.32861328125}},{"offset":{"left":{"x":2033.2076416015626,"z":51.24781799316406,"y":5202.43701171875},"right":{"x":2047.9935302734376,"z":51.10203552246094,"y":5183.53271484375}},"coords":{"x":2040.6005859375,"z":51.1749267578125,"y":5192.98486328125}},{"offset":{"left":{"x":2378.523681640625,"z":57.41164016723633,"y":5230.76318359375},"right":{"x":2366.524658203125,"z":57.68866348266601,"y":5214.76513671875}},"coords":{"x":2372.524169921875,"z":57.55015182495117,"y":5222.76416015625}},{"offset":{"left":{"x":2465.181396484375,"z":46.51968383789062,"y":5126.19921875},"right":{"x":2455.419677734375,"z":46.48658752441406,"y":5108.7431640625}},"coords":{"x":2460.300537109375,"z":46.50313568115234,"y":5117.47119140625}},{"offset":{"left":{"x":2644.16796875,"z":44.48195648193359,"y":5019.52783203125},"right":{"x":2621.01953125,"z":44.45109558105469,"y":5013.19091796875}},"coords":{"x":2632.59375,"z":44.46652603149414,"y":5016.359375}},{"offset":{"left":{"x":2779.22802734375,"z":55.80337142944336,"y":3365.88671875},"right":{"x":2753.48828125,"z":55.7482795715332,"y":3376.908203125}},"coords":{"x":2766.358154296875,"z":55.77582550048828,"y":3371.3974609375}},{"offset":{"left":{"x":2051.969970703125,"z":44.68457412719726,"y":2982.170654296875},"right":{"x":2048.433837890625,"z":44.77914810180664,"y":3003.884521484375}},"coords":{"x":2050.201904296875,"z":44.73186111450195,"y":2993.027587890625}},{"offset":{"left":{"x":119.05375671386719,"z":50.53051376342773,"y":2661.084228515625},"right":{"x":139.3977508544922,"z":50.57235336303711,"y":2683.132568359375}},"coords":{"x":129.2257537841797,"z":50.55143356323242,"y":2672.1083984375}},{"offset":{"left":{"x":-889.427978515625,"z":23.24807167053222,"y":2737.099853515625},"right":{"x":-889.9388427734375,"z":23.3425350189209,"y":2761.093994140625}},"coords":{"x":-889.6834106445313,"z":23.29530334472656,"y":2749.096923828125}},{"offset":{"left":{"x":-1343.998779296875,"z":45.56941604614258,"y":2254.450439453125},"right":{"x":-1365.9853515625,"z":45.48237228393555,"y":2255.210693359375}},"coords":{"x":-1354.9920654296876,"z":45.52589416503906,"y":2254.83056640625}},{"offset":{"left":{"x":-1805.5731201171876,"z":135.09657287597657,"y":744.9312744140625},"right":{"x":-1823.6075439453126,"z":135.0115203857422,"y":766.3497314453125}},"coords":{"x":-1814.59033203125,"z":135.05404663085938,"y":755.6405029296875}},{"offset":{"left":{"x":-1600.8345947265626,"z":57.61074829101562,"y":-104.2474136352539},"right":{"x":-1627.0689697265626,"z":57.9722900390625,"y":-118.7950210571289}},"coords":{"x":-1613.9517822265626,"z":57.79151916503906,"y":-111.5212173461914}},{"offset":{"left":{"x":-1021.6085205078125,"z":20.7398624420166,"y":-695.908447265625},"right":{"x":-1002.4530029296875,"z":20.86419868469238,"y":-718.996337890625}},"coords":{"x":-1012.03076171875,"z":20.80203056335449,"y":-707.452392578125}},{"offset":{"left":{"x":77.80559539794922,"z":31.36238670349121,"y":-770.5187377929688},"right":{"x":68.00630950927735,"z":31.31684684753418,"y":-798.8731079101563}},"coords":{"x":72.90595245361328,"z":31.33961677551269,"y":-784.6959228515625}},{"offset":{"left":{"x":139.0647735595703,"z":29.4892349243164,"y":-954.3123168945313},"right":{"x":111.58240509033203,"z":29.55200576782226,"y":-942.2825317382813}},"coords":{"x":125.3235855102539,"z":29.52062034606933,"y":-948.2974243164063}},{"offset":{"left":{"x":168.74501037597657,"z":28.9553165435791,"y":-1007.6492919921875},"right":{"x":162.1499481201172,"z":29.09294700622558,"y":-1036.9150390625}},"coords":{"x":165.44747924804688,"z":29.02413177490234,"y":-1022.2821655273438}},{"offset":{"left":{"x":324.09027099609377,"z":29.02076339721679,"y":-711.4039306640625},"right":{"x":352.433349609375,"z":28.95539474487304,"y":-721.23583984375}},"coords":{"x":338.2618103027344,"z":28.98807907104492,"y":-716.3198852539063}},{"offset":{"left":{"x":1690.3037109375,"z":84.50928497314453,"y":1493.3548583984376},"right":{"x":1719.918701171875,"z":84.54317474365235,"y":1488.5635986328126}},"coords":{"x":1705.1112060546876,"z":84.52622985839844,"y":1490.959228515625}},{"offset":{"left":{"x":2142.169189453125,"z":48.96044540405273,"y":2696.296142578125},"right":{"x":2164.411376953125,"z":48.32771682739258,"y":2676.174072265625}},"coords":{"x":2153.290283203125,"z":48.64408111572265,"y":2686.235107421875}},{"offset":{"left":{"x":2528.523681640625,"z":41.92478942871094,"y":3014.530029296875},"right":{"x":2548.597412109375,"z":41.84442901611328,"y":2992.235595703125}},"coords":{"x":2538.560546875,"z":41.88460922241211,"y":3003.3828125}},{"offset":{"left":{"x":2746.11962890625,"z":45.09110641479492,"y":4580.79248046875},"right":{"x":2775.14599609375,"z":45.0357780456543,"y":4588.37353515625}},"coords":{"x":2760.6328125,"z":45.06344223022461,"y":4584.5830078125}},{"offset":{"left":{"x":2555.561767578125,"z":44.20840454101562,"y":5357.8388671875},"right":{"x":2584.291259765625,"z":44.10417175292969,"y":5366.4755859375}},"coords":{"x":2569.926513671875,"z":44.15628814697265,"y":5362.1572265625}},{"offset":{"left":{"x":233.78378295898438,"z":31.21071243286132,"y":6548.6533203125},"right":{"x":228.23300170898438,"z":31.29225921630859,"y":6578.134765625}},"coords":{"x":231.00839233398438,"z":31.25148582458496,"y":6563.39404296875}},{"offset":{"left":{"x":27.70280075073242,"z":30.99771499633789,"y":6383.8154296875},"right":{"x":6.58946704864501,"z":30.83747100830078,"y":6405.1279296875}},"coords":{"x":17.14613342285156,"z":30.91759300231933,"y":6394.4716796875}}]', '{"Holder":["Flash","Jones"],"Time":31871}', 'MFX57984', 32735, 'LR-3447'),
	(35, 'Test track', '[{"coords":{"y":-999.2122802734375,"x":399.8022766113281,"z":29.03778266906738},"offset":{"left":{"y":-999.13427734375,"x":396.80377197265627,"z":29.09209060668945},"right":{"y":-999.290283203125,"x":402.80078125,"z":28.98347473144531}}},{"coords":{"y":-948.0759887695313,"x":401.79937744140627,"z":29.00528907775879},"offset":{"left":{"y":-947.9833984375,"x":398.8011779785156,"z":28.95742416381836},"right":{"y":-948.1685791015625,"x":404.7975769042969,"z":29.05315399169922}}},{"coords":{"y":-856.6326904296875,"x":379.3553771972656,"z":28.9096508026123},"offset":{"left":{"y":-859.632568359375,"x":379.32965087890627,"z":28.92380714416504},"right":{"y":-853.6328125,"x":379.381103515625,"z":28.89549446105957}}},{"coords":{"y":-857.8264770507813,"x":307.930908203125,"z":28.8912296295166},"offset":{"left":{"y":-860.822998046875,"x":308.07305908203127,"z":28.91570472717285},"right":{"y":-854.8299560546875,"x":307.78875732421877,"z":28.86675453186035}}},{"coords":{"y":-945.0037231445313,"x":255.10060119628907,"z":28.96150016784668},"offset":{"left":{"y":-946.1378173828125,"x":257.87799072265627,"z":28.96024513244629},"right":{"y":-943.86962890625,"x":252.32322692871095,"z":28.96275520324707}}},{"coords":{"y":-1049.6292724609376,"x":259.5314636230469,"z":28.85872840881347},"offset":{"left":{"y":-1046.7816162109376,"x":260.4749450683594,"z":28.88475227355957},"right":{"y":-1052.4769287109376,"x":258.5879821777344,"z":28.83270454406738}}},{"coords":{"y":-1051.1195068359376,"x":356.0289306640625,"z":28.94266700744629},"offset":{"left":{"y":-1048.120849609375,"x":355.9468994140625,"z":28.90532302856445},"right":{"y":-1054.1181640625,"x":356.1109619140625,"z":28.98001098632812}}},{"coords":{"y":-1021.5379028320313,"x":399.1917724609375,"z":29.02521514892578},"offset":{"left":{"y":-1021.3974609375,"x":396.1970520019531,"z":29.13472175598144},"right":{"y":-1021.6783447265625,"x":402.1864929199219,"z":28.91570854187011}}}]', '{"Time":1072,"Holder":["Marc","Bundy"]}', 'GIF71578', 572, 'LR-7235');
/*!40000 ALTER TABLE `lapraces` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.laws
CREATE TABLE IF NOT EXISTS `laws` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `fine` int(11) NOT NULL DEFAULT 0,
  `months` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.laws: ~90 rows (approximately)
/*!40000 ALTER TABLE `laws` DISABLE KEYS */;
INSERT INTO `laws` (`id`, `name`, `description`, `fine`, `months`) VALUES
	(9, 'Artikel 447e - Wet identificatieplicht', 'Hij die niet voldoet aan de verplichting om een identiteitsbewijs ter inzage aan te bieden of medewerking te verlenen aan het nemen van een of meer vingerafdrukken.', 4150, 1),
	(10, 'Artikel 461 - Verboden toegang', 'Hij die, zonder daartoe gerechtigd te zijn, zich op eens anders grond waarvan de toegang op een voor hem blijkbare wijze door de rechthebbende is verboden, bevindt of daar vee laat lopen.', 415, 1),
	(11, 'Artikel 239 - Zedelijkheid', 'schennis van de eerbaarheid:\r\n1: op of aan een plaats, voor het openbaar verkeer bestemd;\r\n2: op een andere dan onder 1Ãƒâ€šÃ‚Â° bedoelde openbare plaats, toegankelijk voor personen beneden de leeftijd van zestien jaar;\r\n3: op een niet openbare plaats, indien een ander daarbij zijns ondanks tegenwoordig is. ', 4350, 3),
	(12, 'Artikel 184 - Niet voldoen aan een bevel of vordering', 'Hij die opzettelijk niet voldoet aan een bevel of een vordering. Weg vluchten van de politie hoort hier bij', 2500, 3),
	(13, 'Artikel 6 - Wegenverkeerswet (Ongeval met verwonding)', 'Het is een ieder die aan het verkeer deelneemt verboden zich zodanig te gedragen dat een aan zijn schuld te wijten verkeersongeval plaatsvindt waardoor een ander wordt gedood of waardoor een ander zwaar lichamelijk letsel wordt toegebracht of zodanig lichamelijk letsel dat daaruit tijdelijke ziekte of verhindering in de uitoefening van de normale bezigheden ontstaat.', 2500, 12),
	(14, 'Artikel 7 - Wegenverkeerswet (Wegrijden van ongeval)', 'Wegvluchten na een verkeers ongeval.', 435, 7),
	(15, 'Artikel 267 - Belediging ambt.', 'Het beledigen met een bepaalde taal/woord keuze naar een ambtenaar in functie toe.', 600, 0),
	(16, 'R602 - Niet stoppen voor rood licht', 'Het negeren van het rode stoplicht.', 240, 0),
	(17, 'R601 - Niet doorgaan bij groen licht', 'Niet door rijden bij het krijgen van een groen licht teken door een stoplicht.', 140, 0),
	(18, 'R628b - Niet opvolgen stopteken politie', 'Het negeren van een stop teken van een dienstvoertuig bij een verkeerscontrole.', 390, 0),
	(19, 'R326 - Rechts inhalen', 'Het illegaal inhalen van een ander voertuig via de rechterkant.', 240, 0),
	(20, 'D505 - Baldadigheid', 'Overtreding door zich in het openbaar tegen personen of goederen zodanig ruw en onbezonnen te gedragen dat daardoor nadeel kan ontstaan.\r\n', 415, 0),
	(21, 'D510 - Openbaar dronkenschap', 'Door verdovende middelen beÃƒÆ’Ã‚Â¯nvloed zijn in het openbaar.', 415, 0),
	(22, 'Administratiekosten', 'Standaard administratie kosten politie Los Santos.', 9, 0),
	(23, 'D517 - Identiteitsbewijs', 'Geen Legitimatie bij zich hebben.', 95, 0),
	(24, 'D515 - Valse gegevens opgeven', 'Het verlenen van valse informatie over de persoon zelf.', 380, 0),
	(25, 'D537 - Verboden toegang', 'Het schenden van een verboden toegangs-zone.', 95, 0),
	(26, 'F116a - Inbrekerswerktuig', 'In bezit zijn van inbrekerswerktuig. (Lockpicks zijn alleen inbrekerswerktuig als de verdachte een gekwalificeerde diefstal of diefstal met geweld heeft gedaan)', 415, 0),
	(27, 'F120a - Klimmen of klauteren', 'Klimmen of zich bevinden op een beeld, monument, overkapping.', 95, 0),
	(28, 'F120b - Overlast veroorzaken', 'Het verstoren van de openbare orde.', 140, 0),
	(29, 'F125a - Onnodig ophouden', 'Het onnodig ophouden.', 95, 0),
	(31, 'R397 - Foutief parkeren', 'Het foutief parkeren van het desbetreffende voertuig.', 95, 0),
	(32, 'R395 - Gevaar of hinder veroorzaken met een stilstaand voertuig', 'Dat het verboden is om gevaar of hinder te veroorzaken volgt uit artikel 5 van de Wegenverkeerswet.', 140, 0),
	(33, 'Geldboete van de 1e categorie', 'Voor elk strafbaar feit kunt u een geldboete krijgen. Strafbare geiten zijn ingedeeld in 4 categorieÃƒÆ’Ã‚Â«n. De categorie bepaalt de maximale hoogte van de boete ', 435, 0),
	(34, 'Geldboete van de 2e categorie', 'Voor elk strafbaar feit kunt u een geldboete krijgen. Strafbare geiten zijn ingedeeld in 4 categorieÃƒÆ’Ã‚Â«n. De categorie bepaalt de maximale hoogte van de boete ', 4350, 0),
	(35, 'Geldboete van de 3e categorie', 'Voor elk strafbaar feit kunt u een geldboete krijgen. Strafbare geiten zijn ingedeeld in 4 categorieÃƒÆ’Ã‚Â«n. De categorie bepaalt de maximale hoogte van de boete ', 8700, 0),
	(36, 'Geldboete van de 4e categorie', 'Voor elk strafbaar feit kunt u een geldboete krijgen. Strafbare geiten zijn ingedeeld in 4 categorieÃƒÆ’Ã‚Â«n. De categorie bepaalt de maximale hoogte van de boete ', 21750, 0),
	(37, 'R536a - Geen helm dragen op een bromfiets', 'Het niet dragen van een beschermende helm op een bromfiets.', 140, 0),
	(38, 'R536b - Geen helm dragen op een motorfiets', 'Het niet dragen van een beschermende helm op een motorfiets.', 140, 0),
	(39, 'VA 015 - Snelheidsoverschrijding 15 km/h', 'Het overschrijden van de maximale snelheid met 15 km/h', 185, 0),
	(40, 'VA 020 - Snelheidsoverschrijding 20 km/h', 'Het overschrijden van de maximale snelheid met 20 km/h', 257, 0),
	(41, 'VA 030 - Snelheidsoverschrijding 30 km/h', 'Het overschrijden van de maximale snelheid met 30 km/h', 430, 0),
	(42, 'VA 040 - Snelheidsoverschrijding 40 km/h', 'Het overschrijden van de maximale snelheid met 40 km/h', 525, 0),
	(43, 'VA 050 - Snelheidsoverschrijding 50 km/h', 'Het overschrijden van de maximale snelheid met 50 km/h', 700, 0),
	(44, 'Artikel 13 - WWM Categorie I', 'Het is verboden een wapen of munitie van de categorieÃƒÆ’Ã‚Â«n I in bezit te hebben.\r\n\r\nHier onder vallen alle voorwerpen die als een slag/steek wapen gebruikt kan worden (Messen/Hamers/Boksbeugels en zo)', 350, 0),
	(45, 'Artikel 45  - Poging en/of voorbereiding', 'Poging tot misdrijf is strafbaar, wanneer het voornemen van de dader zich door een begin van uitvoering heeft geopenbaard.', 0, 0),
	(46, 'K030 - Kenteken niet behoorlijk zichtbaar op/aan moter voertuig', 'Geen zichtbaar kenteken hebben of het kenteken is erg slecht zichtbaar.', 140, 0),
	(47, 'N420d - Lichtdoorlatendheid ruiten minder dan 55%', 'Het motor voertuig heeft te donkere ruiten waar je niet doorheen kan kijken. Hierbij komt meestal ook een WOK status.', 240, 0),
	(49, 'Artikel 10 - Wegenverkeerswet (Racen)', 'Het is verboden op de weg een wedstrijd met voertuigen te houden of daaraan deel te nemen.', 4350, 4),
	(50, 'Artikel 48 - Medeplichtigheid', 'Het medeplichtig zijn van een illegale activiteit.', 0, 0),
	(51, 'Artikel 4 - Gezichtsbedekking', 'Het bedekken van het gezicht met bijvoorbeeld een masker of bivak.', 120, 0),
	(52, 'Artikel 231b - Valsheid met geschriften, gegevens en biometrische kenmerken', 'Hij die opzettelijk en wederrechtelijk identificerende persoonsgegevens, niet zijnde biometrische persoonsgegevens, van een ander gebruikt met het oogmerk om zijn identiteit te verhelen of de identiteit van de ander te verhelen of misbruiken, waardoor uit dat gebruik enig nadeel kan ontstaan.', 4200, 0),
	(53, 'R549a - Niet stoppen bij stopbord', 'Het negeren van het verkeer stopbord.', 140, 0),
	(54, 'R421a - Geen dim- of grootlicht voeren bij nacht', 'Het niet aan hebben van het motorvoertuig\'s licht systeem in de nacht ', 95, 0),
	(55, 'K150c - Rijbewijs niet kunnen tonen', 'Niet op eerste vordering behoorlijk het rijbewijs ter inzage afgeven', 500, 0),
	(57, 'Artikel 9 - Wegenverkeerswet (Rijden zonder rijbewijs)', 'Het is degene die weet of redelijkerwijs moet weten dat hem bij rechterlijke uitspraak of strafbeschikking de bevoegdheid tot het besturen van motorrijtuigen is ontzegd, Bijvoorbeeld wanneer de verdachte zijn rijbewijs is ingetrokken door de politie en hij rijdt opnieuw rond, Of rijd rond zonder een rijbewijs te hebben', 2000, 6),
	(59, 'Artikel 188 - Valse aangifte', 'Het opgeven van een valse aangifte.', 1150, 12),
	(61, 'Artikel 138 - Huisvredebreuk', 'Het betreden van iemand ander zijn eigendom of grond zonder toestemming.', 1250, 12),
	(62, 'Artikel 196 - Onrechtmatig voordoen als een politie ambt.', 'Het na doen van een politie ambtenaar in functie.', 435, 12),
	(63, 'Artikel 3 - Opiumwet (Softdrugs)(Eigen gebruik)', 'Het is verboden een middel als bedoeld in de bij deze wet behorende lijst op zak te hebben, Voorbeelden zijn Cannabisproducten (hasj en wiet) en Pijnstillers (Max 5gram= 5 zakjes en/of 5 pijnstillers)', 2250, 12),
	(64, 'Artikel 2 - Opiumwet (Hard drugs)(Eigen gebruik)', 'Het is verboden een middel als bedoeld in de bij deze wet behorende lijst op zak te hebben, Voorbeelden zijn heroÃƒÆ’Ã‚Â¯ne, cocaÃƒÆ’Ã‚Â¯ne, amfetamine, xtc en GHB. (Eigen gebruik = 1 zakje)(Meer dan 1zakje of 1 soort drug = Dealer)', 4350, 15),
	(65, 'Artikel 285 - Bedreiging', 'Het bedreigen van een burger of ambtenaar in functie op een dodelijke wijze.', 1500, 18),
	(66, 'Artikel 300 - Mishandeling', 'Het mishandelen van een burger of ambtenaar in functie.', 4350, 20),
	(67, 'Artikel 310 - Eenvoudige diefstal (Beroven)', 'Het stelen of afpakken van simpele goederen die niet van deze persoon zijn. (Beroven van mensen)', 950, 15),
	(68, 'Artikel 141 - Openlijke geweldpleging', 'Geweld plegen tegen een burger of ambtenaar in een openbare plek/ruimte waar andere burgers bij zijn.', 1500, 30),
	(69, 'Artikel 416 - Heling (Diefstal van voertuigen)', 'Diefstal van iemands eigendom.', 4350, 20),
	(70, 'Artikel 326 - Oplichting', 'Het oplichten van een burger of ambtenaar in functie. Vormen van oplichting is meestal in de richting van goederen, geld of auto\'s.', 2500, 28),
	(72, 'Artikel 5 - Wegenverkeerswet (gevaarlijk rijden)', 'Het is een ieder verboden zich zodanig te gedragen dat gevaar op de weg wordt veroorzaakt of kan worden veroorzaakt of dat het verkeer op de weg wordt gehinderd of kan worden gehinderd', 850, 2),
	(73, 'Artikel 8 - Wegenverkeerswet (Rijden onder invloed)', 'Het is een ieder verboden een voertuig te besturen of als bestuurder te doen besturen, terwijl hij verkeert onder zodanige invloed van een stof, waarvan hij weet of redelijkerwijs moet weten, dat het gebruik daarvan - al dan niet in combinatie met het gebruik van een andere stof - de rijvaardigheid kan verminderen, dat hij niet tot behoorlijk besturen in staat moet worden geacht. ', 435, 3),
	(74, 'Artikel 266 - Eenvoudige belediging', 'Komt nog', 435, 0),
	(75, 'Artikel 142 - Misbruik noodnummer', 'Het maken van een valse 112 melding.', 3400, 0),
	(76, 'Artikel 435a - Overtreding openbare orde', 'Hij die in het openbaar kledingstukken of opzichtige onderscheidingstekens draagt of voert, welke uitdrukking zijn van een bepaald staatkundig streven.', 2350, 0),
	(77, 'Artikel 367 - Helpen bij ontsnapping', 'Het helpen bij een ontsnapping van een persoon.', 4350, 2),
	(78, 'Artikel 180 - Wederspanningheid', 'Hij die zich met geweld of bedreiging met geweld verzet tegen een ambtenaar werkzaam in de rechtmatige uitoefening van zijn bediening.', 2250, 12),
	(79, 'Artikel 261 - Smaad & Laster', 'BeÃƒâ€šÃ‚Â­jeÃƒâ€šÃ‚Â­geÃƒâ€šÃ‚Â­ning die ieÃƒâ€šÃ‚Â­mands eer, goeÃƒâ€šÃ‚Â­de naam of aanÃƒâ€šÃ‚Â­zien aanÃƒâ€šÃ‚Â­tast, opÃƒâ€šÃ‚Â­zetÃƒâ€šÃ‚Â­teÃƒâ€šÃ‚Â­lijÃƒâ€šÃ‚Â­ke grieÃƒâ€šÃ‚Â­venÃƒâ€šÃ‚Â­de beÃƒâ€šÃ‚Â­leÃƒâ€šÃ‚Â­diÃƒâ€šÃ‚Â­ging', 4750, 12),
	(80, 'Artikel 307 - Dood door schuld', 'Hij aan wiens schuld de dood van een ander te wijten is.', 4350, 24),
	(81, 'Artikel 350 - Vandalisme', 'Het opzettelijk vernielen van iemands eigendommen.', 435, 20),
	(82, 'Artikel 317 - Afpersing en afdreiging', 'Hij die, met het oogmerk om zich of een ander wederrechtelijk te bevoordelen, door geweld of bedreiging met geweld iemand dwingt hetzij tot de afgifte van enig goed dat een persoon bezit.', 1250, 32),
	(83, 'Artikel 311 - Gekwalificeerde diefstal (Winkels/Bank/Huizen)', 'Diefstal met braak, Bijvoorbeeld Kassa\'s, Bank, Huizen.', 1750, 25),
	(84, 'Artikel 177 - Omkoping', 'Poging tot het omkopen van een ambtenaar in functie.', 2500, 30),
	(85, 'Artikel 420 - Witwassen', 'Het witwassen van oneerlijk gekregen geld.', 4350, 30),
	(86, 'Artikel 225 - Bewijsschrift vervalsen', 'Hij die een geschrift dat bestemd is om tot bewijs van enig feit te dienen, valselijk opmaakt of vervalst.', 2500, 25),
	(87, 'Artikel 282 - Gijzeling', 'Hij die opzettelijk iemand wederrechtelijk van de vrijheid berooft of beroofd houdt.', 4380, 35),
	(88, 'Artikel 302 - Zware mishandeling', 'Hij die aan een ander opzettelijk zwaar lichamelijk letsel toebrengt, wordt, als schuldig aan zware mishandeling berecht.', 4350, 35),
	(89, 'Artikel 312 - Diefstal met geweld (Overvallen met wapens of gijzelaars', 'Het plegen van een diefstal met een geweldsmiddel of wapen, Een diefstal/Overval met gijzelaar word ook als diefstal met geweld beschouwd.', 3250, 40),
	(91, 'Artikel 255 - Verlating van hulpbehoevenden', 'Hij die opzettelijk iemand tot wiens onderhoud, verpleging of verzorging hij krachtens wet of overeenkomst verplicht is, in een hulpeloze toestand brengt of laat, wordt gestraft met gevangenisstraf van ten hoogste twee jaren of geldboete van de vierde categorie.\r\n', 4350, 35),
	(92, 'Artikel 287 - Poging Doodslag', 'Hij die opzettelijk een ander van het leven berooft, wordt, als schuldig aan doodslag, gestraft met gevangenisstraf van ten hoogste vijftien jaren of geldboete van de vijfde categorie.\r\n', 4350, 45),
	(93, 'Artikel 289 - Moord', 'Het vermoorden van een burger.', 5250, 50),
	(97, 'Artikel 47b - Heterdaad Grinden', 'Iemand op heterdaad betrappen op het grinden.', 12, 5),
	(98, 'Inbeslagname Voertuig', 'Vul het Auto inbelslagname pv even in vullen en deze toevoegen!', 0, 0),
	(99, 'Artikel 61a - Gebruiken van mobiele telecommunicatieapparatuur', 'Het is degene die een motorvoertuig, bromfiets, snorfiets of gehandicaptenvoertuig dat is uitgerust met een motor bestuurt verboden tijdens het rijden een mobiele telefoon vast te houden.', 140, 0),
	(101, 'Artikel 359 - Verduistering', 'is het zich opzettelijk wederrechtelijk toe-eigenen van een goed dat aan een ander toebehoort welk goed men anders dan als gevolg van een misdrijf onder zich heeft.', 15000, 32),
	(102, 'Artikel 363 - Corruptie', 'Ambtenaar in functie die corruptie heeft begaan.', 12500, 30),
	(103, 'Artikel 26 - WWM Categorie II', 'Het is verboden een wapen of munitie van de categorieÃƒÆ’Ã‚Â«n II in bezit te hebben.\r\n\r\nHieronder vallen vuurwapens waar geen automatisch vuur met gegeven wordt. (SNS/Vintage)\r\n', 4350, 12),
	(104, 'Artikel 26 - WWM Categorie III', 'Het is verboden een wapen of munitie van de categorieÃƒÆ’Ã‚Â«n III in bezit te hebben.\r\n\r\nHieronder vallen vuurwapens waar automatisch vuur met gegeven wordt. (AP pistol/Tec9/Mini SMG en zwaardere wapens)\r\n', 6700, 18),
	(106, 'Artikel 31 - WWM Wapen handel', 'Het is verboden om een wapen of munitie van de categorieÃƒÆ’Ã‚Â«n II en/of III over te dragen/Verhandelen of verkopen. ', 8350, 26),
	(107, 'Artikel 3 - Opiumwet (Softdrugs)(Dealer)', '(Lijst 2 o.a. Softdrugs) Het is verboden een middel als bedoeld in de bij deze wet behorende lijst op zak te hebben, te telen, te bereiden, te bewerken, te verwerken, te verkopen, af te leveren, te verstrekken of te vervoeren, Voorbeelden zijn Cannabisproducten (hasj en wiet) en Pijnstillers, Een verdachte word als dealer gezien als hij meer dan 5 gram drugs of 5 pillen opzak heeft, Dit kan gecombineerd zijn.', 4350, 24),
	(108, 'Artikel 2 - Opiumwet (Hard drugs)(Dealer)', 'Het is verboden een middel als bedoeld in de bij deze wet behorende lijst op zak te hebben, te telen, te bereiden, te bewerken, te verwerken, te verkopen, af te leveren, te verstrekken of te vervoeren, Voorbeelden zijn heroÃƒÆ’Ã‚Â¯ne, cocaÃƒÆ’Ã‚Â¯ne, amfetamine, xtc en GHB, Een verdachte word als dealer gezien als hij meer dan 0,5 gram of 1 pil(Xtc) opzak heeft', 8700, 30),
	(109, 'Artikel 987 - Niet voldoen aan corona maatregelen', 'Het niet voldoen aan de corona maatregelen of regels.', 50, 2),
	(110, 'Artikel 47A - Heterdaad Janken', 'Waneer een verdachte heterdaad aan het janken is na een aanhouding. (Breng deze naar de jank vijver blokkenpark)', 13, 0);
/*!40000 ALTER TABLE `laws` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.moneysafes
CREATE TABLE IF NOT EXISTS `moneysafes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `safe` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `transactions` text NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.moneysafes: ~0 rows (approximately)
/*!40000 ALTER TABLE `moneysafes` DISABLE KEYS */;
/*!40000 ALTER TABLE `moneysafes` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.playerskins
CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=45053 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.playerskins: ~0 rows (approximately)
/*!40000 ALTER TABLE `playerskins` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerskins` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.playerstattoos
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` longtext NOT NULL DEFAULT '0',
  `tattoos` longtext NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.playerstattoos: ~0 rows (approximately)
/*!40000 ALTER TABLE `playerstattoos` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerstattoos` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.profiles
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'https://i.imgur.com/tdi3NGa.png',
  `fingerprint` varchar(255) DEFAULT NULL,
  `dnacode` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `lastsearch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.profiles: ~0 rows (approximately)
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.reports
CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `profileid` int(11) DEFAULT NULL,
  `report` text NOT NULL,
  `laws` text DEFAULT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.reports: ~0 rows (approximately)
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.server_bans
CREATE TABLE IF NOT EXISTS `server_bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `steam` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `bannedby` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.server_bans: 0 rows
/*!40000 ALTER TABLE `server_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_bans` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.server_extra
CREATE TABLE IF NOT EXISTS `server_extra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steam` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `permission` varchar(50) DEFAULT 'user',
  `priority` int(11) DEFAULT 2,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.server_extra: 1 rows
/*!40000 ALTER TABLE `server_extra` DISABLE KEYS */;
INSERT INTO `server_extra` (`id`, `steam`, `license`, `name`, `permission`, `priority`) VALUES
	(1, 'steam:11000013230a55e', 'license:acdab8e13ed68e5b0598f1c3d0160a476275bfc9', 'Colonel_x', 'god', 100);
/*!40000 ALTER TABLE `server_extra` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.store_balance
CREATE TABLE IF NOT EXISTS `store_balance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` varchar(50) NOT NULL,
  `income` bit(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.store_balance: ~0 rows (approximately)
/*!40000 ALTER TABLE `store_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_balance` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.store_business
CREATE TABLE IF NOT EXISTS `store_business` (
  `market_id` varchar(50) NOT NULL DEFAULT '',
  `citizenid` varchar(50) NOT NULL,
  `stock` varchar(50) NOT NULL DEFAULT '[]',
  `stock_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `truck_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `relationship_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `money` int(10) unsigned NOT NULL DEFAULT 0,
  `total_money_earned` int(10) unsigned NOT NULL DEFAULT 0,
  `total_money_spent` int(10) unsigned NOT NULL DEFAULT 0,
  `goods_bought` int(10) unsigned NOT NULL DEFAULT 0,
  `distance_traveled` double unsigned NOT NULL DEFAULT 0,
  `total_visits` int(10) unsigned NOT NULL DEFAULT 0,
  `customers` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`market_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.store_business: ~0 rows (approximately)
/*!40000 ALTER TABLE `store_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_business` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.store_jobs
CREATE TABLE IF NOT EXISTS `store_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `reward` int(10) unsigned NOT NULL DEFAULT 0,
  `product` varchar(50) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT 0,
  `progress` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.store_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `store_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_jobs` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steam` varchar(50) DEFAULT NULL,
  `position` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.user: 0 rows
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `last_login` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `name`, `role`, `rank`, `last_login`) VALUES
	(1, 'admin', '$2y$10$ghClUiEgBeEuFP4Bo.idN.yCKrApjCYW.yXX9a.XtVKZOsIwVpj8q', 'Admin', 'admin', '1', '2021-03-28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.user_convictions
CREATE TABLE IF NOT EXISTS `user_convictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` varchar(48) DEFAULT NULL,
  `offense` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.user_convictions: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_convictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_convictions` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.user_mdt
CREATE TABLE IF NOT EXISTS `user_mdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` varchar(48) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `mugshot_url` varchar(255) DEFAULT NULL,
  `fingerprint` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbcorev4.user_mdt: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_mdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_mdt` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `typevehicle` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'https://i.imgur.com/tdi3NGa.png',
  `note` text DEFAULT NULL,
  `lastsearch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Dumping structure for table qbcorev4.warrants
CREATE TABLE IF NOT EXISTS `warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table qbcorev4.warrants: ~0 rows (approximately)
/*!40000 ALTER TABLE `warrants` DISABLE KEYS */;
/*!40000 ALTER TABLE `warrants` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
