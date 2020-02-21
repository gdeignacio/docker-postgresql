
CREATE DATABASE DUMMY
    WITH OWNER = postgres
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    CONNECTION LIMIT = -1;


ALTER DATABASE DUMMY
 SET client_encoding ='UTF8';

CREATE ROLE DUMMY LOGIN
    ENCRYPTED PASSWORD 'DUMMY'
    NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE ROLE WWW_DUMMY LOGIN
    ENCRYPTED PASSWORD 'WWW_DUMMY'
    NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE TABLESPACE DUMMY
OWNER DUMMY
LOCATION '/var/lib/postgresql/data/tablespaces';

ALTER ROLE DUMMY SET default_tablespace TO DUMMY;

ALTER DATABASE DUMMY OWNER to DUMMY;
