CREATE TABLE `aftpos` (
	`nr` CHAR(8) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`p` CHAR(5) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`knr` CHAR(7) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`anr` CHAR(20) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`me` CHAR(4) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`mwst` CHAR(1) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`t` CHAR(1) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`zeilen` INT(4) NULL DEFAULT '0',
	`menge` DOUBLE(8,2) NULL DEFAULT NULL,
	`preis` DOUBLE(8,2) NULL DEFAULT NULL,
	`rabatt` FLOAT(4,2) NULL DEFAULT NULL,
	`typ` CHAR(1) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`bpl` CHAR(1) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`txt` TEXT NOT NULL COLLATE 'latin1_swedish_ci',
	`snr` CHAR(42) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	UNIQUE INDEX `nrp` (`nr`, `p`) USING BTREE,
	INDEX `nr` (`nr`) USING BTREE,
	INDEX `anr` (`anr`) USING BTREE,
	INDEX `snr` (`snr`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=MyISAM
;
