-- // [GLOBAL]: create continents table
-- Migration SQL that makes the change goes here.
-- -------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS continents (
	PRIMARY KEY (continent_id),
	continent_id	INT				AUTO_INCREMENT,
	continent_code  CHAR(4)			DEFAULT NULL,
	continent_name	VARCHAR(30)		DEFAULT NULL,
    updated_at     TIMESTAMP NULL     DEFAULT NULL,
    created_at     TIMESTAMP NULL     DEFAULT NULL,
    deleted_at     TIMESTAMP NULL     DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table continents
--

LOCK TABLES continents WRITE;
/*!40000 ALTER TABLE `continents` DISABLE KEYS */;

INSERT INTO continents (continent_code, continent_name)
	 VALUES ('AF', 'Africa'),			-- continent-id = 1
  			('AS', 'Asia'),				-- continent-id = 2
  			('EU', 'Europe'),			-- continent-id = 3
  		    ('NA', 'North America'),    -- continent-id = 4
  			('SA', 'South America'),    -- continent-id = 5
  			('OC', 'Oceania'),			-- continent-id = 6
  			('AN', 'Antarctica');       -- continent-id = 7

/*!40000 ALTER TABLE `continents` ENABLE KEYS */;
UNLOCK TABLES;

-- @UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS continents;
