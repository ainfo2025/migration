CREATE TABLE `plzv` (
	`plz` CHAR(5) NOT NULL DEFAULT '0' COLLATE 'latin1_swedish_ci',
	`ort` CHAR(30) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`vorwahl` CHAR(6) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`typ` CHAR(2) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	INDEX `plz` (`plz`) USING BTREE,
	INDEX `i_ort` (`ort`) USING BTREE,
	FULLTEXT INDEX `i_vorwahl` (`vorwahl`)
)
COLLATE='latin1_swedish_ci'
ENGINE=MyISAM
;
