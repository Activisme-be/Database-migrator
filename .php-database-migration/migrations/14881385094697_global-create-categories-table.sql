-- // global create categories table
-- Migration SQL that makes the change goes here.
CREATE TABLE IF NOT EXISTS categories (
	PRIMARY KEY (id),
	id	                    INT				   AUTO_INCREMENT,
    category_module         VARCHAR(60)        DEFAULT NULL,
    category_name           VARCHAR(255)       DEFAULT NULL,
    category_description    TEXT               DEFAULT NULL,
    updated_at              TIMESTAMP NULL     DEFAULT NULL,
    created_at              TIMESTAMP NULL     DEFAULT NULL,
    deleted_at              TIMESTAMP NULL     DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

LOCK TABLES categories WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO categories (category_module, category_name, category_description)
	 VALUES ('petition', 'Sociale welzijn', 'Petities omtrent de sociale welzijn.'),
            ('petition', 'Dierenwelzijn', 'Petities omtrent dieren welzijn'),
            ('petition', 'Asiel & migratie', 'Petities omtrent asiel en migratie');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

-- @UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS categories;
