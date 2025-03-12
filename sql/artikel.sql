CREATE TABLE `artikel` (
	`mcode` VARCHAR(10) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`anr` VARCHAR(10) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`enr` VARCHAR(15) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`hmv` VARCHAR(13) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`eb1` VARCHAR(42) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`eb2` VARCHAR(30) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`eb3` VARCHAR(30) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`ek` DOUBLE(10,2) NULL DEFAULT '0.00',
	`rab` FLOAT(6,2) NULL DEFAULT '0.00',
	`mv` FLOAT(6,2) NULL DEFAULT '0.00',
	`me` VARCHAR(4) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`ve` DOUBLE(10,2) NULL DEFAULT '0.00',
	`b1` VARCHAR(42) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`b2` VARCHAR(30) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`b3` VARCHAR(30) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`b4` VARCHAR(30) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`vk` DOUBLE(10,2) NULL DEFAULT '0.00',
	`mwst` CHAR(1) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`bpl` FLOAT(6,2) NULL DEFAULT '0.00',
	`lastchange` INT(11) NULL DEFAULT '0',
	`lager` CHAR(1) NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`hers` INT(6) NULL DEFAULT '0',
	INDEX `bez` (`b1`, `b2`, `b3`, `b4`) USING BTREE,
	INDEX `enr` (`enr`) USING BTREE,
	INDEX `anr` (`anr`) USING BTREE,
	INDEX `hers` (`hers`) USING BTREE,
	INDEX `hmv` (`hmv`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=MyISAM
;
