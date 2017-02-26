-- // create signature table
-- Migration SQL that makes the change goes here.
CREATE TABLE IF NOT EXISTS signatures (
	PRIMARY KEY (id),
	id	                    INT				   AUTO_INCREMENT,
    publish                 VARCHAR(60)        DEFAULT NULL,
    name                    VARCHAR(20)        DEFAULT NULL,
    birth_data              VARCHAR(10)        DEFAULT NULL,
    email                   VARCHAR(100)       DEFAULT NULL,
    city_name               VARCHAR(120)       DEFAULT NULL,
    city_code               CHAR(4)            DEFAULT NULL,
    updated_at              TIMESTAMP NULL     DEFAULT NULL,
    created_at              TIMESTAMP NULL     DEFAULT NULL,
    deleted_at              TIMESTAMP NULL     DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS petition_signatures (
	PRIMARY KEY (id),
	id	                    INT				   AUTO_INCREMENT,
    petition_id             INT                DEFAULT NULL,
    signature_id            INT                DEFAULT NULL,
    updated_at              TIMESTAMP NULL     DEFAULT NULL,
    created_at              TIMESTAMP NULL     DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- @UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS signatures;
DROP TABLE IF EXISTS petition_signatures;
