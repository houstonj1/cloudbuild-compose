CREATE USER james WITH PASSWORD 'james' SUPERUSER;
CREATE DATABASE james;
ALTER DATABASE james OWNER TO james;

\connect james
CREATE TABLE james
(
	id     text NOT NULL,
	name   text
);
INSERT INTO james VALUES
(
	'1',
	'james'
)
