-- // [GLOBAL]: create sessions table
-- Migration SQL that makes the change goes here.
CREATE TABLE sessions (
  id         VARCHAR(128)     NOT NULL,
  ip_address VARCHAR(45)      NOT NULL,
  TIMESTAMP  INT(10) UNSIGNED NOT NULL DEFAULT '0',
  data       BLOB             NOT NULL,
  PRIMARY KEY (id, ip_address),
  KEY ci_sessions_TIMESTAMP (TIMESTAMP)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- @UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS sessions;
