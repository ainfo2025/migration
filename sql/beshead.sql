CREATE TABLE `beshead` (
	`bnr` CHAR(8) NOT NULL DEFAULT '0' COLLATE 'latin1_swedish_ci',
	`anr` CHAR(8) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`lnr` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`datum` DATE NOT NULL DEFAULT '0000-00-00',
	PRIMARY KEY (`bnr`) USING BTREE,
	UNIQUE INDEX `bnr` (`bnr`) USING BTREE,
	INDEX `bnr_2` (`bnr`) USING BTREE,
	INDEX `anr` (`anr`) USING BTREE,
	INDEX `lnr` (`lnr`) USING BTREE,
	INDEX `datum` (`datum`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=MyISAM
;
