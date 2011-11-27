CREATE TABLE `jams` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `srcurl` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `w` int(10) unsigned NOT NULL,
  `h` int(10) unsigned NOT NULL,
  `user` varchar(255) NOT NULL,
  `date_added` int(10) unsigned NOT NULL,
  `is_approved` tinyint(3) unsigned NOT NULL,
  `is_deleted` tinyint(3) unsigned NOT NULL,
  `views` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user` (`user`,`is_deleted`,`date_added`),
  KEY `is_approved` (`is_approved`,`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `refs` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `url` varchar(255) NOT NULL,
  `jam_id` int(10) unsigned NOT NULL,
  `views` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `url` (`url`,`jam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `signins` (
  `user` varchar(255) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `last_date` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
