-- // Create petitions table
-- Migration SQL that makes the change goes here.
CREATE TABLE IF NOT EXISTS petitions (
  id            INT(11)             NOT NULL AUTO_INCREMENT,
  creator_id    INT(11)             DEFAULT NULL,
  category_id   INT(11)             DEFAULT NULL,
  title         VARCHAR(255)        DEFAULT NULL,
  description   TEXT,
  updated_at    TIMESTAMP NULL      DEFAULT NULL,
  created_at    TIMESTAMP NULL      DEFAULT NULL,
  deleted_at    TIMESTAMP NULL      DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY petitions_title_uindex (title)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS comments_petitions (
    PRIMARY KEY (id),
    id              INT                 AUTO_INCREMENT,
    comment_id      INT                 DEFAULT NULL,
    manifest_id     INT                 DEFAULT NULL,
    author_id       INT                 DEFAULT NULL,
    updated_at      TIMESTAMP NULL      DEFAULT NULL,
    created_at      TIMESTAMP NULL      DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- @UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS petitions;
DROP TABLE IF EXISTS comments_petitions;
