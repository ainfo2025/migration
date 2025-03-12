CREATE TABLE `lieferanten` (
	`nr` INT(5) NULL DEFAULT NULL,
	`mcode` CHAR(6) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`a1` CHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`a2` CHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`a3` CHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`a4` CHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`a5` CHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`a6` CHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`knr` CHAR(15) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`sb` CHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`tel` CHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`note` CHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`fax` CHAR(15) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`telex` CHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`bank` CHAR(25) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`blz` CHAR(8) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`kto` CHAR(15) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`f1` INT(2) NULL DEFAULT NULL,
	`s1` FLOAT NULL DEFAULT NULL,
	`f2` INT(2) NULL DEFAULT NULL,
	`s2` FLOAT NULL DEFAULT NULL,
	`f3` INT(2) NULL DEFAULT NULL,
	`s3` FLOAT NULL DEFAULT NULL,
	`lnr` CHAR(7) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	INDEX `nr` (`nr`) USING BTREE,
	INDEX `lnr` (`lnr`) USING BTREE,
	INDEX `mcode` (`mcode`) USING BTREE,
	INDEX `a1` (`a1`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=MyISAM
;
