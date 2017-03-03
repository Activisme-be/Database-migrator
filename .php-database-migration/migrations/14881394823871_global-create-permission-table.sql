-- // global create permission table
-- Migration SQL that makes the change goes here.
CREATE TABLE IF NOT EXISTS permissions (
	  PRIMARY KEY (id),
	  id	           INT			          AUTO_INCREMENT,
	  name           VARCHAR(255)       DEFAULT NULL,
	  description	   TEXT		            DEFAULT NULL,
    updated_at     TIMESTAMP NULL     DEFAULT NULL,
    created_at     TIMESTAMP NULL     DEFAULT NULL,
    deleted_at     TIMESTAMP NULL     DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS login_permissions (
	  PRIMARY KEY (id),
    -- CONSTRAINT 	FK_permission_login FOREIGN KEY (login_id)      REFERENCES users(id),
    -- CONSTRAINT 	FK_permission_data  FOREIGN KEY (permission_id) REFERENCES permissions(id),
	  id	           INT			        AUTO_INCREMENT,
    login_id       INT              DEFAULT NULL,
    permission_id  INT              DEFAULT NULL,
    updated_at     TIMESTAMP NULL   DEFAULT NULL,
    created_at     TIMESTAMP NULL   DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;


-- @UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS permissions;
DROP TABLE IF EXISTS login_permissions;
