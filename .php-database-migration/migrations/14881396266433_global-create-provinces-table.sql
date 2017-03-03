-- // [Global] create provinces table
-- Migration SQL that makes the change goes here.
CREATE TABLE provinces (
	  PRIMARY KEY (province_id),
	  province_id			  INT 		          AUTO_INCREMENT,
	  province_name_nl	VARCHAR(60)       DEFAULT NULL,
	  province_name_fr	VARCHAR(60)       DEFAULT NULL,
	  province_name_de	VARCHAR(60)       DEFAULT NULL,
    updated_at        TIMESTAMP NULL    DEFAULT NULL,
    created_at        TIMESTAMP NULL    DEFAULT NULL,
    deleted_at        TIMESTAMP NULL    DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO provinces (province_name_nl, province_name_fr, province_name_de)
	 VALUES ('Antwerpen', 'Anvers', 'Antwerpen'), 						            -- province_id = 01
	 		    ('Limburg', 'Limbourg', 'Limburg'), 						              -- province_id = 02
			    ('Oost-Vlaanderen', 'Flandere orientale', 'Ostflandern'),   	-- province_id = 03
			    ('Vlaams-Brabant', 'Brabnt flamand', 'Flamisch-Brabant'),     -- province_id = 04
			    ('West-Vlaanderen', 'Flandre occidentale', 'Westflandern'),	  -- province_id = 05
			    ('Henegouwen', 'Hainaut', 'Hennegau'),						            -- province_id = 06
			    ('Luik', 'Liege', 'Luttich'),								                  -- province_id = 07
			    ('Luxemburg', 'Luxembourg', 'Luxemburg'),					            -- province_id = 08
			    ('Namen', 'Namur', 'Namur'),								                  -- province_id = 09
			    ('Waals-Brabant', 'Brabant wallon', 'Wallonisch-Branbant');	  -- province_id = 10

-- @UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS provinces;
