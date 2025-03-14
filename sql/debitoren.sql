CREATE TABLE `debitoren` (
	`nr` CHAR(8) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`knr` CHAR(7) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`datum` DATE NULL DEFAULT NULL,
	`mcode` CHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`zdatum` DATE NULL DEFAULT NULL,
	`txt` CHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`netto` DOUBLE NULL DEFAULT NULL,
	`m1` DOUBLE NULL DEFAULT NULL,
	`m2` DOUBLE NULL DEFAULT NULL,
	`netto1` DOUBLE NULL DEFAULT NULL,
	`skto` FLOAT NULL DEFAULT NULL,
	`zahlung` DOUBLE NULL DEFAULT NULL,
	`skonto` DOUBLE NULL DEFAULT NULL,
	`offen` DOUBLE NULL DEFAULT NULL,
	`bezahlt` CHAR(1) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`mahnkz` CHAR(1) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ein` INT(11) NULL DEFAULT '0',
	`zk` INT(11) NULL DEFAULT NULL,
	`lnr` CHAR(7) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`mahndatum` INT(11) NULL DEFAULT NULL,
	`oddatum` INT(11) NULL DEFAULT NULL,
	`odflag` CHAR(1) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`kg` INT(5) NULL DEFAULT NULL,
	PRIMARY KEY (`nr`) USING BTREE,
	INDEX `odflag` (`odflag`) USING BTREE,
	INDEX `knr` (`knr`) USING BTREE,
	INDEX `lnr` (`lnr`) USING BTREE,
	INDEX `ein` (`ein`) USING BTREE,
	INDEX `datum` (`datum`) USING BTREE,
	INDEX `zdatum` (`zdatum`) USING BTREE,
	INDEX `offen` (`offen`) USING BTREE,
	INDEX `mahnkz` (`mahnkz`) USING BTREE,
	INDEX `kg` (`kg`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=MyISAM
;
