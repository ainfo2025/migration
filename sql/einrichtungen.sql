CREATE TABLE `einrichtungen` (
	`id` INT(11) NOT NULL,
	`mcode` CHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`name` CHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=MyISAM
;
