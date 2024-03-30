ALTER TABLE album DROP FOREIGN KEY fk_musicianName;

ALTER TABLE musician RENAME COLUMN musicianName TO singerName;

ALTER TABLE musician RENAME TO singer;

ALTER TABLE album ADD CONSTRAINT  fk_singerName FOREIGN KEY (singerName) REFERENCES singer(singerName);

ALTER TABLE singer DROP COLUMN bandName, DROP COLUMN role;

DROP TABLE IF EXISTS band;