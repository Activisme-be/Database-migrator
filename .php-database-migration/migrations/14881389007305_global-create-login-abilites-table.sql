-- // [GLOBAL]: Create login abilites table
-- Migration SQL that makes the change goes here.
CREATE TABLE IF NOT EXISTS abilities (
	  PRIMARY KEY (id),
	  id	           INT			          AUTO_INCREMENT,
	  name           VARCHAR(255)       DEFAULT NULL,
	  description	   TEXT		            DEFAULT NULL,
    updated_at     TIMESTAMP NULL     DEFAULT NULL,
    created_at     TIMESTAMP NULL     DEFAULT NULL,
    deleted_at     TIMESTAMP NULL     DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS login_abilities (
    PRIMARY KEY (ID),
    -- CONSTRAINT FK_ability_login FOREIGN KEY (login_id)   REFERENCES users(id),
    -- CONSTRAINT FK_ability_data  FOREIGN KEY (ability_id) REFERENCES abilities(id),
    id              INT              AUTO_INCREMENT,
    login_id        INT              DEFAULT NULL,
    ability_id      INT              DEFAULT NULL,
    updated_at      TIMESTAMP NULL   DEFAULT NULL,
    created_at      TIMESTAMP NULL   DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- @UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS abilities;
DROP TABLE IF EXISTS login_abilities;
