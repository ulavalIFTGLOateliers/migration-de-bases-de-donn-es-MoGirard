CREATE TABLE IF NOT EXISTS band (bandName VARCHAR(50) PRIMARY KEY, creation YEAR, genre VARCHAR(50));
INSERT IGNORE INTO band (bandName, creation, genre) VALUES ('Crazy Duo', 2015, 'rock'), ('Luna', 2009, 'classical'),
('Mysterio', 2019, 'pop');

ALTER TABLE singer ADD role VARCHAR(50);
ALTER TABLE singer ADD bandName VARCHAR(50) REFERENCES band(bandName);


UPDATE singer SET role = 'vocals', bandName = 'Crazy Duo' WHERE singerName = 'Alina';
UPDATE singer SET role = 'guitar', bandName = 'Mysterio' WHERE singerName = 'Mysterio';
UPDATE singer SET role = 'percussion', bandName = 'Crazy Duo' WHERE singerName = 'Rainbow';
UPDATE singer SET role = 'piano', bandName = 'Luna' WHERE singerName = 'Luna';

ALTER TABLE singer RENAME TO musician;

ALTER TABLE album DROP FOREIGN KEY fk_A_singerName;
ALTER TABLE album ADD CONSTRAINT fk_musicianName FOREIGN KEY (singerName) REFERENCES musician(singerName);



ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
