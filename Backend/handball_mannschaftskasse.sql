--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 16.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: wwuser
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO wwuser;

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ausgaben; Type: TABLE; Schema: public; Owner: wwuser
--

CREATE TABLE public.ausgaben (
    a_id integer NOT NULL,
    amount numeric NOT NULL,
    reason text NOT NULL,
    zeitpunkt date NOT NULL
);


ALTER TABLE public.ausgaben OWNER TO wwuser;

--
-- Name: ausgaben_a_id_seq; Type: SEQUENCE; Schema: public; Owner: wwuser
--

CREATE SEQUENCE public.ausgaben_a_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ausgaben_a_id_seq OWNER TO wwuser;

--
-- Name: ausgaben_a_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wwuser
--

ALTER SEQUENCE public.ausgaben_a_id_seq OWNED BY public.ausgaben.a_id;


--
-- Name: spieler_tbl; Type: TABLE; Schema: public; Owner: wwuser
--

CREATE TABLE public.spieler_tbl (
    s_id integer NOT NULL,
    vorname character varying NOT NULL,
    nachname character varying NOT NULL,
    profilbild_url text DEFAULT 'https://img.freepik.com/vektoren-premium/mann-avatar-profilbild-vektor-illustration_268834-538.jpg?w=2000'::text NOT NULL,
    isadmin boolean DEFAULT false,
    passwort text,
    email text
);


ALTER TABLE public.spieler_tbl OWNER TO wwuser;

--
-- Name: spieler_tbl_s_id_seq; Type: SEQUENCE; Schema: public; Owner: wwuser
--

CREATE SEQUENCE public.spieler_tbl_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spieler_tbl_s_id_seq OWNER TO wwuser;

--
-- Name: spieler_tbl_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wwuser
--

ALTER SEQUENCE public.spieler_tbl_s_id_seq OWNED BY public.spieler_tbl.s_id;


--
-- Name: suggestion_player; Type: TABLE; Schema: public; Owner: wwuser
--

CREATE TABLE public.suggestion_player (
    sp_id integer NOT NULL,
    fk_player integer,
    fk_suggestion integer,
    bewertung boolean NOT NULL
);


ALTER TABLE public.suggestion_player OWNER TO wwuser;

--
-- Name: suggestionPlayer_sp_id_seq; Type: SEQUENCE; Schema: public; Owner: wwuser
--

CREATE SEQUENCE public."suggestionPlayer_sp_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."suggestionPlayer_sp_id_seq" OWNER TO wwuser;

--
-- Name: suggestionPlayer_sp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wwuser
--

ALTER SEQUENCE public."suggestionPlayer_sp_id_seq" OWNED BY public.suggestion_player.sp_id;


--
-- Name: suggestions; Type: TABLE; Schema: public; Owner: wwuser
--

CREATE TABLE public.suggestions (
    sg_id integer NOT NULL,
    suggestion text NOT NULL,
    zeitpunkt date NOT NULL,
    fk_spieler integer,
    likes integer DEFAULT 0 NOT NULL,
    dislikes integer DEFAULT 0
);


ALTER TABLE public.suggestions OWNER TO wwuser;

--
-- Name: suggestions_sg_id_seq; Type: SEQUENCE; Schema: public; Owner: wwuser
--

CREATE SEQUENCE public.suggestions_sg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.suggestions_sg_id_seq OWNER TO wwuser;

--
-- Name: suggestions_sg_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wwuser
--

ALTER SEQUENCE public.suggestions_sg_id_seq OWNED BY public.suggestions.sg_id;


--
-- Name: zahlungen_tbl; Type: TABLE; Schema: public; Owner: wwuser
--

CREATE TABLE public.zahlungen_tbl (
    z_id integer NOT NULL,
    bezahlt boolean DEFAULT false,
    barzahlung boolean,
    fk_s_id integer,
    betrag numeric NOT NULL,
    grund character varying DEFAULT 'Fehlverhalten'::character varying,
    zeitpunkt timestamp without time zone,
    until date
);


ALTER TABLE public.zahlungen_tbl OWNER TO wwuser;

--
-- Name: zahlungen_tbl_z_id_seq; Type: SEQUENCE; Schema: public; Owner: wwuser
--

CREATE SEQUENCE public.zahlungen_tbl_z_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zahlungen_tbl_z_id_seq OWNER TO wwuser;

--
-- Name: zahlungen_tbl_z_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wwuser
--

ALTER SEQUENCE public.zahlungen_tbl_z_id_seq OWNED BY public.zahlungen_tbl.z_id;


--
-- Name: ausgaben a_id; Type: DEFAULT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.ausgaben ALTER COLUMN a_id SET DEFAULT nextval('public.ausgaben_a_id_seq'::regclass);


--
-- Name: spieler_tbl s_id; Type: DEFAULT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.spieler_tbl ALTER COLUMN s_id SET DEFAULT nextval('public.spieler_tbl_s_id_seq'::regclass);


--
-- Name: suggestion_player sp_id; Type: DEFAULT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.suggestion_player ALTER COLUMN sp_id SET DEFAULT nextval('public."suggestionPlayer_sp_id_seq"'::regclass);


--
-- Name: suggestions sg_id; Type: DEFAULT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.suggestions ALTER COLUMN sg_id SET DEFAULT nextval('public.suggestions_sg_id_seq'::regclass);


--
-- Name: zahlungen_tbl z_id; Type: DEFAULT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.zahlungen_tbl ALTER COLUMN z_id SET DEFAULT nextval('public.zahlungen_tbl_z_id_seq'::regclass);


--
-- Data for Name: ausgaben; Type: TABLE DATA; Schema: public; Owner: wwuser
--

INSERT INTO public.ausgaben (a_id, amount, reason, zeitpunkt) VALUES (3, 49.49, 'Neues Pick', '2023-09-21');


--
-- Data for Name: spieler_tbl; Type: TABLE DATA; Schema: public; Owner: wwuser
--

INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (23, 'Ben', 'Wallner', '/PlayerImages/Wallner.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (22, 'Moritz', 'Steiner', '/PlayerImages/Steiner.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (20, 'Jakob', 'Ruprecht', '/PlayerImages/Ruprecht.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (18, 'Albert', 'Prantl', '/PlayerImages/Prantl.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (25, 'Nikolas ', 'Wiltschko', '/PlayerImages/Wiltschko.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (24, 'Nikolas', 'Wilk', '/PlayerImages/Wilk.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (19, 'Alex', 'Reinisch', '/PlayerImages/Reinisch.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (13, 'Flo', 'Domian', '/PlayerImages/Domian.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (17, 'Leo', 'Pantic', '/PlayerImages/Pantic.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (12, 'Max ', 'Correa', '/PlayerImages/Correa.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (29, 'Pipo', 'Pajer', '/PlayerImages/Pajer.jpeg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (30, 'Benni', 'Admin', '/PlayerImages/Halmer-Ben.jpeg', true, 'BenniPW', 'benni.halmer@gmail.com');
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (26, 'Lukas', 'Semler', '/PlayerImages/Semler2.jpg', false, NULL, '');
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (1, 'Lukas', 'Semler', '/PlayerImages/Semler2.jpg', true, 'LukasPW', 'lukas.semler@gmail.com');
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (11, 'Tobi', 'Bachmann', '/PlayerImages/Bachmann.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (14, 'Niko', 'Florea', '/PlayerImages/Florea-1.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (28, 'Dani', 'Schmid', '/PlayerImages/Schmid-Dani.jpeg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (16, 'Leo', 'Kutej', '/PlayerImages/Kutej.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (15, 'Benni', 'Halmer', '/PlayerImages/Halmer-B.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (21, 'Simon', 'Schmid', '/PlayerImages/Schmid-S.jpg', false, NULL, NULL);
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (27, 'Elias', 'Halmer', '/PlayerImages/Halmer-E.jpeg', false, NULL, '');
INSERT INTO public.spieler_tbl (s_id, vorname, nachname, profilbild_url, isadmin, passwort, email) VALUES (9, 'Fabi', 'Androsch', '/PlayerImages/Androsch2.jpg', false, NULL, NULL);


--
-- Data for Name: suggestion_player; Type: TABLE DATA; Schema: public; Owner: wwuser
--



--
-- Data for Name: suggestions; Type: TABLE DATA; Schema: public; Owner: wwuser
--

INSERT INTO public.suggestions (sg_id, suggestion, zeitpunkt, fk_spieler, likes, dislikes) VALUES (10, 'Pickerl', '2023-08-25', NULL, 2, 1);
INSERT INTO public.suggestions (sg_id, suggestion, zeitpunkt, fk_spieler, likes, dislikes) VALUES (14, 'Mannschaftsabend (Paintball, Bar, Bowling)', '2023-09-01', NULL, 9, 0);
INSERT INTO public.suggestions (sg_id, suggestion, zeitpunkt, fk_spieler, likes, dislikes) VALUES (13, 'Harz für die nächste Saison ', '2023-08-25', NULL, 5, 1);
INSERT INTO public.suggestions (sg_id, suggestion, zeitpunkt, fk_spieler, likes, dislikes) VALUES (11, 'Bier', '2023-08-25', NULL, 3, 1);


--
-- Data for Name: zahlungen_tbl; Type: TABLE DATA; Schema: public; Owner: wwuser
--

INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (73, false, NULL, 25, 1, 'Keine Springschnur / Theraband / Ball', '2023-09-07 15:36:03.384898', '2023-10-07');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (70, true, true, 11, 0.5, 'Field Goal im Training', '2023-09-06 17:53:11.390907', '2023-10-06');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (50, true, true, 11, 0.5, 'Field Goal im Training', '2023-09-01 18:40:49.124177', '2023-10-01');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (43, true, true, 11, 1, 'Zu spät kommen beim Training', '2023-08-31 20:27:07.650162', '2023-09-30');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (32, true, true, 14, 1.5, 'Headshot Torwart (freier Wurf)', '2023-08-23 19:35:15.385275', '2023-09-23');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (31, true, true, 20, 1.5, 'Headshot Torwart (freier Wurf)', '2023-08-23 19:35:03.734936', '2023-09-23');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (49, true, true, 11, 7.5, 'Anderes', '2023-09-01 18:40:09.32884', '2023-10-01');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (34, true, true, 25, 2.50, 'Schlechte Musik', '2023-08-25 20:26:55.227576', '2023-09-25');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (37, true, true, 25, 0.50, 'Anderes', '2023-08-29 20:13:32.850012', '2023-09-29');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (45, false, NULL, 19, 1, 'Zu spät kommen beim Training', '2023-08-31 20:27:28.215513', '2023-09-30');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (77, false, NULL, 28, 15, 'Dumme rote Karte', '2023-09-09 19:42:45.081286', '2023-10-09');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (55, false, NULL, 19, 2.5, 'Training ohne Grund Absagen', '2023-09-01 21:21:47.722884', '2023-10-01');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (33, true, true, 17, 4, 'Zu spät kommen beim Match', '2023-08-25 06:09:17.318527', '2023-09-25');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (51, true, true, 20, 0.5, 'Field Goal im Training', '2023-09-01 18:41:05.059382', '2023-10-01');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (56, true, true, 23, 1.5, 'Headshot Torwart (freier Wurf)', '2023-09-04 15:09:12.756083', '2023-10-04');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (57, true, true, 25, 1, 'Keine Springschnur / Theraband / Ball', '2023-09-04 15:12:02.867024', '2023-10-04');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (42, true, true, 25, 1, 'Keine Springschnur / Theraband / Ball', '2023-08-31 20:26:30.24316', '2023-09-30');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (79, false, NULL, 25, 1, 'Keine Springschnur / Theraband / Ball', '2023-09-16 17:47:57.842327', '2023-10-16');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (46, true, false, 21, 1, 'Zu spät kommen beim Training', '2023-08-31 20:27:51.868812', '2023-09-30');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (52, true, false, 21, 0.5, 'Field Goal im Training', '2023-09-01 18:41:29.576878', '2023-10-01');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (80, false, NULL, 25, 1, 'Keine Springschnur / Theraband / Ball', '2023-09-16 17:48:03.752346', '2023-10-16');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (93, true, true, 20, 1, 'Dress vergessen', '2023-09-21 16:07:32.872474', '2023-10-21');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (38, true, false, 26, 1, 'Kleidung vergessen', '2023-08-30 10:03:13.270691', '2023-09-30');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (75, true, false, 12, 1, 'Keine Springschnur / Theraband / Ball', '2023-09-08 16:36:39.799084', '2023-10-08');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (72, true, false, 12, 1, 'Keine Springschnur / Theraband / Ball', '2023-09-07 15:35:54.050172', '2023-10-07');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (54, true, false, 12, 2.5, 'Trainer beleidigen', '2023-09-01 21:08:11.34757', '2023-10-01');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (39, true, false, 12, 0.5, 'Field Goal im Training', '2023-08-30 15:49:03.754149', '2023-09-30');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (36, true, false, 12, 1, 'Kleidung vergessen', '2023-08-29 15:05:19.08731', '2023-09-29');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (35, true, false, 12, 3, 'Zu spät kommen beim Match', '2023-08-26 07:18:26.85186', '2023-09-26');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (44, true, true, 15, 1, 'Zu spät kommen beim Training', '2023-08-31 20:27:17.248168', '2023-09-30');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (53, true, true, 15, 0.5, 'Field Goal im Training', '2023-09-01 18:41:45.759231', '2023-10-01');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (41, true, true, 25, 1, 'Keine Springschnur / Theraband / Ball', '2023-08-30 16:38:07.439513', '2023-09-30');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (40, true, true, 25, 1.5, 'Headshot Torwart (freier Wurf)', '2023-08-30 16:38:01.575798', '2023-09-30');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (71, false, NULL, 18, 1, 'Keine Springschnur / Theraband / Ball', '2023-09-06 17:53:25.52401', '2023-10-06');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (58, true, true, 17, 0.5, 'Field Goal im Training', '2023-09-04 16:35:26.74814', '2023-10-04');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (48, true, true, 17, 1, 'Dresscode Freitag', '2023-09-01 18:39:50.116112', '2023-10-01');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (47, true, false, 16, 1, 'Dresscode Freitag', '2023-09-01 18:39:36.855511', '2023-10-01');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (74, true, true, 11, 0.5, 'Spende', '2023-09-07 18:04:54.463426', '2023-10-07');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (59, true, true, 23, 0.5, 'Spende', '2023-09-04 16:54:41.270032', '2023-10-04');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (61, true, true, 25, 0.5, 'Spende', '2023-09-04 17:53:36.448391', '2023-10-04');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (76, false, NULL, 25, 1, 'Keine Springschnur / Theraband / Ball', '2023-09-08 16:36:58.89749', '2023-10-08');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (78, false, NULL, 17, 1, 'Dresscode Freitag', '2023-09-16 17:47:41.501936', '2023-10-16');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (81, false, NULL, 25, 1, 'Dresscode vor einem Match', '2023-09-16 17:48:46.727464', '2023-10-16');
INSERT INTO public.zahlungen_tbl (z_id, bezahlt, barzahlung, fk_s_id, betrag, grund, zeitpunkt, until) VALUES (94, true, false, 12, 1, 'Keine Springschnur / Theraband / Ball', '2023-09-21 16:07:48.694718', '2023-10-21');


--
-- Name: ausgaben_a_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wwuser
--

SELECT pg_catalog.setval('public.ausgaben_a_id_seq', 3, true);


--
-- Name: spieler_tbl_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wwuser
--

SELECT pg_catalog.setval('public.spieler_tbl_s_id_seq', 31, true);


--
-- Name: suggestionPlayer_sp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wwuser
--

SELECT pg_catalog.setval('public."suggestionPlayer_sp_id_seq"', 4, true);


--
-- Name: suggestions_sg_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wwuser
--

SELECT pg_catalog.setval('public.suggestions_sg_id_seq', 15, true);


--
-- Name: zahlungen_tbl_z_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wwuser
--

SELECT pg_catalog.setval('public.zahlungen_tbl_z_id_seq', 97, true);


--
-- Name: ausgaben ausgaben_pk; Type: CONSTRAINT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.ausgaben
    ADD CONSTRAINT ausgaben_pk PRIMARY KEY (a_id);


--
-- Name: spieler_tbl spieler_tbl_pkey; Type: CONSTRAINT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.spieler_tbl
    ADD CONSTRAINT spieler_tbl_pkey PRIMARY KEY (s_id);


--
-- Name: suggestion_player suggestionplayer_pk; Type: CONSTRAINT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.suggestion_player
    ADD CONSTRAINT suggestionplayer_pk PRIMARY KEY (sp_id);


--
-- Name: suggestions suggestions_pk; Type: CONSTRAINT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.suggestions
    ADD CONSTRAINT suggestions_pk PRIMARY KEY (sg_id);


--
-- Name: suggestion_player unique_like_dislike; Type: CONSTRAINT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.suggestion_player
    ADD CONSTRAINT unique_like_dislike UNIQUE (fk_player, fk_suggestion);


--
-- Name: zahlungen_tbl zahlungen_tbl_pkey; Type: CONSTRAINT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.zahlungen_tbl
    ADD CONSTRAINT zahlungen_tbl_pkey PRIMARY KEY (z_id);


--
-- Name: suggestions fk_player; Type: FK CONSTRAINT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.suggestions
    ADD CONSTRAINT fk_player FOREIGN KEY (fk_spieler) REFERENCES public.spieler_tbl(s_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: suggestion_player fk_player; Type: FK CONSTRAINT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.suggestion_player
    ADD CONSTRAINT fk_player FOREIGN KEY (fk_player) REFERENCES public.spieler_tbl(s_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: suggestion_player fk_suggestion; Type: FK CONSTRAINT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.suggestion_player
    ADD CONSTRAINT fk_suggestion FOREIGN KEY (fk_suggestion) REFERENCES public.suggestions(sg_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: zahlungen_tbl zahlungen_tbl_fk_s_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wwuser
--

ALTER TABLE ONLY public.zahlungen_tbl
    ADD CONSTRAINT zahlungen_tbl_fk_s_id_fkey FOREIGN KEY (fk_s_id) REFERENCES public.spieler_tbl(s_id);


--
-- Name: FUNCTION citextin(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citextin(cstring) TO wwuser;


--
-- Name: FUNCTION citextout(public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citextout(public.citext) TO wwuser;


--
-- Name: FUNCTION citextrecv(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citextrecv(internal) TO wwuser;


--
-- Name: FUNCTION citextsend(public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citextsend(public.citext) TO wwuser;


--
-- Name: TYPE citext; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.citext TO wwuser;


--
-- Name: FUNCTION cube_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_in(cstring) TO wwuser;


--
-- Name: FUNCTION cube_out(public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_out(public.cube) TO wwuser;


--
-- Name: FUNCTION cube_recv(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_recv(internal) TO wwuser;


--
-- Name: FUNCTION cube_send(public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_send(public.cube) TO wwuser;


--
-- Name: TYPE cube; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.cube TO wwuser;


--
-- Name: TYPE dblink_pkey_results; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.dblink_pkey_results TO wwuser;


--
-- Name: TYPE earth; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.earth TO wwuser;


--
-- Name: FUNCTION gbtreekey16_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbtreekey16_in(cstring) TO wwuser;


--
-- Name: FUNCTION gbtreekey16_out(public.gbtreekey16); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbtreekey16_out(public.gbtreekey16) TO wwuser;


--
-- Name: TYPE gbtreekey16; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.gbtreekey16 TO wwuser;


--
-- Name: FUNCTION gbtreekey2_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbtreekey2_in(cstring) TO wwuser;


--
-- Name: FUNCTION gbtreekey2_out(public.gbtreekey2); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbtreekey2_out(public.gbtreekey2) TO wwuser;


--
-- Name: TYPE gbtreekey2; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.gbtreekey2 TO wwuser;


--
-- Name: FUNCTION gbtreekey32_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbtreekey32_in(cstring) TO wwuser;


--
-- Name: FUNCTION gbtreekey32_out(public.gbtreekey32); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbtreekey32_out(public.gbtreekey32) TO wwuser;


--
-- Name: TYPE gbtreekey32; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.gbtreekey32 TO wwuser;


--
-- Name: FUNCTION gbtreekey4_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbtreekey4_in(cstring) TO wwuser;


--
-- Name: FUNCTION gbtreekey4_out(public.gbtreekey4); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbtreekey4_out(public.gbtreekey4) TO wwuser;


--
-- Name: TYPE gbtreekey4; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.gbtreekey4 TO wwuser;


--
-- Name: FUNCTION gbtreekey8_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbtreekey8_in(cstring) TO wwuser;


--
-- Name: FUNCTION gbtreekey8_out(public.gbtreekey8); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbtreekey8_out(public.gbtreekey8) TO wwuser;


--
-- Name: TYPE gbtreekey8; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.gbtreekey8 TO wwuser;


--
-- Name: FUNCTION gbtreekey_var_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbtreekey_var_in(cstring) TO wwuser;


--
-- Name: FUNCTION gbtreekey_var_out(public.gbtreekey_var); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbtreekey_var_out(public.gbtreekey_var) TO wwuser;


--
-- Name: TYPE gbtreekey_var; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.gbtreekey_var TO wwuser;


--
-- Name: FUNCTION ghstore_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ghstore_in(cstring) TO wwuser;


--
-- Name: FUNCTION ghstore_out(public.ghstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ghstore_out(public.ghstore) TO wwuser;


--
-- Name: TYPE ghstore; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.ghstore TO wwuser;


--
-- Name: FUNCTION gtrgm_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gtrgm_in(cstring) TO wwuser;


--
-- Name: FUNCTION gtrgm_out(public.gtrgm); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gtrgm_out(public.gtrgm) TO wwuser;


--
-- Name: TYPE gtrgm; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.gtrgm TO wwuser;


--
-- Name: FUNCTION hstore_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_in(cstring) TO wwuser;


--
-- Name: FUNCTION hstore_out(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_out(public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_recv(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_recv(internal) TO wwuser;


--
-- Name: FUNCTION hstore_send(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_send(public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_subscript_handler(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_subscript_handler(internal) TO wwuser;


--
-- Name: TYPE hstore; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.hstore TO wwuser;


--
-- Name: FUNCTION _intbig_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._intbig_in(cstring) TO wwuser;


--
-- Name: FUNCTION _intbig_out(public.intbig_gkey); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._intbig_out(public.intbig_gkey) TO wwuser;


--
-- Name: TYPE intbig_gkey; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.intbig_gkey TO wwuser;


--
-- Name: FUNCTION lquery_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lquery_in(cstring) TO wwuser;


--
-- Name: FUNCTION lquery_out(public.lquery); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lquery_out(public.lquery) TO wwuser;


--
-- Name: FUNCTION lquery_recv(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lquery_recv(internal) TO wwuser;


--
-- Name: FUNCTION lquery_send(public.lquery); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lquery_send(public.lquery) TO wwuser;


--
-- Name: TYPE lquery; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.lquery TO wwuser;


--
-- Name: FUNCTION ltree_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_in(cstring) TO wwuser;


--
-- Name: FUNCTION ltree_out(public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_out(public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_recv(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_recv(internal) TO wwuser;


--
-- Name: FUNCTION ltree_send(public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_send(public.ltree) TO wwuser;


--
-- Name: TYPE ltree; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.ltree TO wwuser;


--
-- Name: FUNCTION ltree_gist_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_gist_in(cstring) TO wwuser;


--
-- Name: FUNCTION ltree_gist_out(public.ltree_gist); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_gist_out(public.ltree_gist) TO wwuser;


--
-- Name: TYPE ltree_gist; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.ltree_gist TO wwuser;


--
-- Name: FUNCTION ltxtq_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltxtq_in(cstring) TO wwuser;


--
-- Name: FUNCTION ltxtq_out(public.ltxtquery); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltxtq_out(public.ltxtquery) TO wwuser;


--
-- Name: FUNCTION ltxtq_recv(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltxtq_recv(internal) TO wwuser;


--
-- Name: FUNCTION ltxtq_send(public.ltxtquery); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltxtq_send(public.ltxtquery) TO wwuser;


--
-- Name: TYPE ltxtquery; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.ltxtquery TO wwuser;


--
-- Name: FUNCTION bqarr_in(cstring); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.bqarr_in(cstring) TO wwuser;


--
-- Name: FUNCTION bqarr_out(public.query_int); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.bqarr_out(public.query_int) TO wwuser;


--
-- Name: TYPE query_int; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.query_int TO wwuser;


--
-- Name: TYPE tablefunc_crosstab_2; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.tablefunc_crosstab_2 TO wwuser;


--
-- Name: TYPE tablefunc_crosstab_3; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.tablefunc_crosstab_3 TO wwuser;


--
-- Name: TYPE tablefunc_crosstab_4; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TYPE public.tablefunc_crosstab_4 TO wwuser;


--
-- Name: FUNCTION hstore(text[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore(text[]) TO wwuser;


--
-- Name: FUNCTION citext(boolean); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext(boolean) TO wwuser;


--
-- Name: FUNCTION citext(character); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext(character) TO wwuser;


--
-- Name: FUNCTION hstore_to_json(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_to_json(public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_to_jsonb(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_to_jsonb(public.hstore) TO wwuser;


--
-- Name: FUNCTION citext(inet); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext(inet) TO wwuser;


--
-- Name: FUNCTION _int_contained(integer[], integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_contained(integer[], integer[]) TO wwuser;


--
-- Name: FUNCTION _int_contained_joinsel(internal, oid, internal, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_contained_joinsel(internal, oid, internal, smallint, internal) TO wwuser;


--
-- Name: FUNCTION _int_contained_sel(internal, oid, internal, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_contained_sel(internal, oid, internal, integer) TO wwuser;


--
-- Name: FUNCTION _int_contains(integer[], integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_contains(integer[], integer[]) TO wwuser;


--
-- Name: FUNCTION _int_contains_joinsel(internal, oid, internal, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_contains_joinsel(internal, oid, internal, smallint, internal) TO wwuser;


--
-- Name: FUNCTION _int_contains_sel(internal, oid, internal, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_contains_sel(internal, oid, internal, integer) TO wwuser;


--
-- Name: FUNCTION _int_different(integer[], integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_different(integer[], integer[]) TO wwuser;


--
-- Name: FUNCTION _int_inter(integer[], integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_inter(integer[], integer[]) TO wwuser;


--
-- Name: FUNCTION _int_matchsel(internal, oid, internal, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_matchsel(internal, oid, internal, integer) TO wwuser;


--
-- Name: FUNCTION _int_overlap(integer[], integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_overlap(integer[], integer[]) TO wwuser;


--
-- Name: FUNCTION _int_overlap_joinsel(internal, oid, internal, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_overlap_joinsel(internal, oid, internal, smallint, internal) TO wwuser;


--
-- Name: FUNCTION _int_overlap_sel(internal, oid, internal, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_overlap_sel(internal, oid, internal, integer) TO wwuser;


--
-- Name: FUNCTION _int_same(integer[], integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_same(integer[], integer[]) TO wwuser;


--
-- Name: FUNCTION _int_union(integer[], integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._int_union(integer[], integer[]) TO wwuser;


--
-- Name: FUNCTION _lt_q_regex(public.ltree[], public.lquery[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._lt_q_regex(public.ltree[], public.lquery[]) TO wwuser;


--
-- Name: FUNCTION _lt_q_rregex(public.lquery[], public.ltree[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._lt_q_rregex(public.lquery[], public.ltree[]) TO wwuser;


--
-- Name: FUNCTION _ltq_extract_regex(public.ltree[], public.lquery); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltq_extract_regex(public.ltree[], public.lquery) TO wwuser;


--
-- Name: FUNCTION _ltq_regex(public.ltree[], public.lquery); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltq_regex(public.ltree[], public.lquery) TO wwuser;


--
-- Name: FUNCTION _ltq_rregex(public.lquery, public.ltree[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltq_rregex(public.lquery, public.ltree[]) TO wwuser;


--
-- Name: FUNCTION _ltree_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_compress(internal) TO wwuser;


--
-- Name: FUNCTION _ltree_consistent(internal, public.ltree[], smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_consistent(internal, public.ltree[], smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION _ltree_extract_isparent(public.ltree[], public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_extract_isparent(public.ltree[], public.ltree) TO wwuser;


--
-- Name: FUNCTION _ltree_extract_risparent(public.ltree[], public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_extract_risparent(public.ltree[], public.ltree) TO wwuser;


--
-- Name: FUNCTION _ltree_gist_options(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_gist_options(internal) TO wwuser;


--
-- Name: FUNCTION _ltree_isparent(public.ltree[], public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_isparent(public.ltree[], public.ltree) TO wwuser;


--
-- Name: FUNCTION _ltree_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION _ltree_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION _ltree_r_isparent(public.ltree, public.ltree[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_r_isparent(public.ltree, public.ltree[]) TO wwuser;


--
-- Name: FUNCTION _ltree_r_risparent(public.ltree, public.ltree[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_r_risparent(public.ltree, public.ltree[]) TO wwuser;


--
-- Name: FUNCTION _ltree_risparent(public.ltree[], public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_risparent(public.ltree[], public.ltree) TO wwuser;


--
-- Name: FUNCTION _ltree_same(public.ltree_gist, public.ltree_gist, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_same(public.ltree_gist, public.ltree_gist, internal) TO wwuser;


--
-- Name: FUNCTION _ltree_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltree_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION _ltxtq_exec(public.ltree[], public.ltxtquery); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltxtq_exec(public.ltree[], public.ltxtquery) TO wwuser;


--
-- Name: FUNCTION _ltxtq_extract_exec(public.ltree[], public.ltxtquery); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltxtq_extract_exec(public.ltree[], public.ltxtquery) TO wwuser;


--
-- Name: FUNCTION _ltxtq_rexec(public.ltxtquery, public.ltree[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public._ltxtq_rexec(public.ltxtquery, public.ltree[]) TO wwuser;


--
-- Name: FUNCTION akeys(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.akeys(public.hstore) TO wwuser;


--
-- Name: FUNCTION armor(bytea); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.armor(bytea) TO wwuser;


--
-- Name: FUNCTION armor(bytea, text[], text[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.armor(bytea, text[], text[]) TO wwuser;


--
-- Name: FUNCTION avals(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.avals(public.hstore) TO wwuser;


--
-- Name: FUNCTION boolop(integer[], public.query_int); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.boolop(integer[], public.query_int) TO wwuser;


--
-- Name: FUNCTION cash_dist(money, money); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cash_dist(money, money) TO wwuser;


--
-- Name: FUNCTION citext_cmp(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_cmp(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_eq(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_eq(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_ge(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_ge(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_gt(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_gt(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_hash(public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_hash(public.citext) TO wwuser;


--
-- Name: FUNCTION citext_hash_extended(public.citext, bigint); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_hash_extended(public.citext, bigint) TO wwuser;


--
-- Name: FUNCTION citext_larger(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_larger(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_le(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_le(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_lt(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_lt(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_ne(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_ne(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_pattern_cmp(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_pattern_cmp(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_pattern_ge(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_pattern_ge(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_pattern_gt(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_pattern_gt(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_pattern_le(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_pattern_le(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_pattern_lt(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_pattern_lt(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION citext_smaller(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.citext_smaller(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION connectby(text, text, text, text, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.connectby(text, text, text, text, integer) TO wwuser;


--
-- Name: FUNCTION connectby(text, text, text, text, integer, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.connectby(text, text, text, text, integer, text) TO wwuser;


--
-- Name: FUNCTION connectby(text, text, text, text, text, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.connectby(text, text, text, text, text, integer) TO wwuser;


--
-- Name: FUNCTION connectby(text, text, text, text, text, integer, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.connectby(text, text, text, text, text, integer, text) TO wwuser;


--
-- Name: FUNCTION crosstab(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.crosstab(text) TO wwuser;


--
-- Name: FUNCTION crosstab(text, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.crosstab(text, integer) TO wwuser;


--
-- Name: FUNCTION crosstab(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.crosstab(text, text) TO wwuser;


--
-- Name: FUNCTION crosstab2(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.crosstab2(text) TO wwuser;


--
-- Name: FUNCTION crosstab3(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.crosstab3(text) TO wwuser;


--
-- Name: FUNCTION crosstab4(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.crosstab4(text) TO wwuser;


--
-- Name: FUNCTION crypt(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.crypt(text, text) TO wwuser;


--
-- Name: FUNCTION cube(double precision[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube(double precision[]) TO wwuser;


--
-- Name: FUNCTION cube(double precision); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube(double precision) TO wwuser;


--
-- Name: FUNCTION cube(double precision[], double precision[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube(double precision[], double precision[]) TO wwuser;


--
-- Name: FUNCTION cube(double precision, double precision); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube(double precision, double precision) TO wwuser;


--
-- Name: FUNCTION cube(public.cube, double precision); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube(public.cube, double precision) TO wwuser;


--
-- Name: FUNCTION cube(public.cube, double precision, double precision); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube(public.cube, double precision, double precision) TO wwuser;


--
-- Name: FUNCTION cube_cmp(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_cmp(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_contained(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_contained(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_contains(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_contains(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_coord(public.cube, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_coord(public.cube, integer) TO wwuser;


--
-- Name: FUNCTION cube_coord_llur(public.cube, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_coord_llur(public.cube, integer) TO wwuser;


--
-- Name: FUNCTION cube_dim(public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_dim(public.cube) TO wwuser;


--
-- Name: FUNCTION cube_distance(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_distance(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_enlarge(public.cube, double precision, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_enlarge(public.cube, double precision, integer) TO wwuser;


--
-- Name: FUNCTION cube_eq(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_eq(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_ge(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_ge(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_gt(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_gt(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_inter(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_inter(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_is_point(public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_is_point(public.cube) TO wwuser;


--
-- Name: FUNCTION cube_le(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_le(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_ll_coord(public.cube, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_ll_coord(public.cube, integer) TO wwuser;


--
-- Name: FUNCTION cube_lt(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_lt(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_ne(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_ne(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_overlap(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_overlap(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_size(public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_size(public.cube) TO wwuser;


--
-- Name: FUNCTION cube_subset(public.cube, integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_subset(public.cube, integer[]) TO wwuser;


--
-- Name: FUNCTION cube_union(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_union(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION cube_ur_coord(public.cube, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.cube_ur_coord(public.cube, integer) TO wwuser;


--
-- Name: FUNCTION date_dist(date, date); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.date_dist(date, date) TO wwuser;


--
-- Name: FUNCTION dblink(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink(text) TO wwuser;


--
-- Name: FUNCTION dblink(text, boolean); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink(text, boolean) TO wwuser;


--
-- Name: FUNCTION dblink(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink(text, text) TO wwuser;


--
-- Name: FUNCTION dblink(text, text, boolean); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink(text, text, boolean) TO wwuser;


--
-- Name: FUNCTION dblink_build_sql_delete(text, int2vector, integer, text[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_build_sql_delete(text, int2vector, integer, text[]) TO wwuser;


--
-- Name: FUNCTION dblink_build_sql_insert(text, int2vector, integer, text[], text[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_build_sql_insert(text, int2vector, integer, text[], text[]) TO wwuser;


--
-- Name: FUNCTION dblink_build_sql_update(text, int2vector, integer, text[], text[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_build_sql_update(text, int2vector, integer, text[], text[]) TO wwuser;


--
-- Name: FUNCTION dblink_cancel_query(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_cancel_query(text) TO wwuser;


--
-- Name: FUNCTION dblink_close(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_close(text) TO wwuser;


--
-- Name: FUNCTION dblink_close(text, boolean); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_close(text, boolean) TO wwuser;


--
-- Name: FUNCTION dblink_close(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_close(text, text) TO wwuser;


--
-- Name: FUNCTION dblink_close(text, text, boolean); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_close(text, text, boolean) TO wwuser;


--
-- Name: FUNCTION dblink_connect(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_connect(text) TO wwuser;


--
-- Name: FUNCTION dblink_connect(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_connect(text, text) TO wwuser;


--
-- Name: FUNCTION dblink_current_query(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_current_query() TO wwuser;


--
-- Name: FUNCTION dblink_disconnect(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_disconnect() TO wwuser;


--
-- Name: FUNCTION dblink_disconnect(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_disconnect(text) TO wwuser;


--
-- Name: FUNCTION dblink_error_message(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_error_message(text) TO wwuser;


--
-- Name: FUNCTION dblink_exec(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_exec(text) TO wwuser;


--
-- Name: FUNCTION dblink_exec(text, boolean); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_exec(text, boolean) TO wwuser;


--
-- Name: FUNCTION dblink_exec(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_exec(text, text) TO wwuser;


--
-- Name: FUNCTION dblink_exec(text, text, boolean); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_exec(text, text, boolean) TO wwuser;


--
-- Name: FUNCTION dblink_fdw_validator(options text[], catalog oid); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_fdw_validator(options text[], catalog oid) TO wwuser;


--
-- Name: FUNCTION dblink_fetch(text, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_fetch(text, integer) TO wwuser;


--
-- Name: FUNCTION dblink_fetch(text, integer, boolean); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_fetch(text, integer, boolean) TO wwuser;


--
-- Name: FUNCTION dblink_fetch(text, text, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_fetch(text, text, integer) TO wwuser;


--
-- Name: FUNCTION dblink_fetch(text, text, integer, boolean); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_fetch(text, text, integer, boolean) TO wwuser;


--
-- Name: FUNCTION dblink_get_connections(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_get_connections() TO wwuser;


--
-- Name: FUNCTION dblink_get_notify(OUT notify_name text, OUT be_pid integer, OUT extra text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_get_notify(OUT notify_name text, OUT be_pid integer, OUT extra text) TO wwuser;


--
-- Name: FUNCTION dblink_get_notify(conname text, OUT notify_name text, OUT be_pid integer, OUT extra text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_get_notify(conname text, OUT notify_name text, OUT be_pid integer, OUT extra text) TO wwuser;


--
-- Name: FUNCTION dblink_get_pkey(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_get_pkey(text) TO wwuser;


--
-- Name: FUNCTION dblink_get_result(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_get_result(text) TO wwuser;


--
-- Name: FUNCTION dblink_get_result(text, boolean); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_get_result(text, boolean) TO wwuser;


--
-- Name: FUNCTION dblink_is_busy(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_is_busy(text) TO wwuser;


--
-- Name: FUNCTION dblink_open(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_open(text, text) TO wwuser;


--
-- Name: FUNCTION dblink_open(text, text, boolean); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_open(text, text, boolean) TO wwuser;


--
-- Name: FUNCTION dblink_open(text, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_open(text, text, text) TO wwuser;


--
-- Name: FUNCTION dblink_open(text, text, text, boolean); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_open(text, text, text, boolean) TO wwuser;


--
-- Name: FUNCTION dblink_send_query(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dblink_send_query(text, text) TO wwuser;


--
-- Name: FUNCTION dearmor(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dearmor(text) TO wwuser;


--
-- Name: FUNCTION decrypt(bytea, bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.decrypt(bytea, bytea, text) TO wwuser;


--
-- Name: FUNCTION decrypt_iv(bytea, bytea, bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.decrypt_iv(bytea, bytea, bytea, text) TO wwuser;


--
-- Name: FUNCTION defined(public.hstore, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.defined(public.hstore, text) TO wwuser;


--
-- Name: FUNCTION delete(public.hstore, text[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.delete(public.hstore, text[]) TO wwuser;


--
-- Name: FUNCTION delete(public.hstore, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.delete(public.hstore, text) TO wwuser;


--
-- Name: FUNCTION delete(public.hstore, public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.delete(public.hstore, public.hstore) TO wwuser;


--
-- Name: FUNCTION difference(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.difference(text, text) TO wwuser;


--
-- Name: FUNCTION digest(bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.digest(bytea, text) TO wwuser;


--
-- Name: FUNCTION digest(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.digest(text, text) TO wwuser;


--
-- Name: FUNCTION dintdict_init(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dintdict_init(internal) TO wwuser;


--
-- Name: FUNCTION dintdict_lexize(internal, internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dintdict_lexize(internal, internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION distance_chebyshev(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.distance_chebyshev(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION distance_taxicab(public.cube, public.cube); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.distance_taxicab(public.cube, public.cube) TO wwuser;


--
-- Name: FUNCTION dmetaphone(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dmetaphone(text) TO wwuser;


--
-- Name: FUNCTION dmetaphone_alt(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dmetaphone_alt(text) TO wwuser;


--
-- Name: FUNCTION dxsyn_init(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dxsyn_init(internal) TO wwuser;


--
-- Name: FUNCTION dxsyn_lexize(internal, internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.dxsyn_lexize(internal, internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION each(hs public.hstore, OUT key text, OUT value text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.each(hs public.hstore, OUT key text, OUT value text) TO wwuser;


--
-- Name: FUNCTION earth(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.earth() TO wwuser;


--
-- Name: FUNCTION earth_box(public.earth, double precision); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.earth_box(public.earth, double precision) TO wwuser;


--
-- Name: FUNCTION earth_distance(public.earth, public.earth); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.earth_distance(public.earth, public.earth) TO wwuser;


--
-- Name: FUNCTION encrypt(bytea, bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.encrypt(bytea, bytea, text) TO wwuser;


--
-- Name: FUNCTION encrypt_iv(bytea, bytea, bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.encrypt_iv(bytea, bytea, bytea, text) TO wwuser;


--
-- Name: FUNCTION exist(public.hstore, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.exist(public.hstore, text) TO wwuser;


--
-- Name: FUNCTION exists_all(public.hstore, text[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.exists_all(public.hstore, text[]) TO wwuser;


--
-- Name: FUNCTION exists_any(public.hstore, text[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.exists_any(public.hstore, text[]) TO wwuser;


--
-- Name: FUNCTION fetchval(public.hstore, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.fetchval(public.hstore, text) TO wwuser;


--
-- Name: FUNCTION float4_dist(real, real); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.float4_dist(real, real) TO wwuser;


--
-- Name: FUNCTION float8_dist(double precision, double precision); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.float8_dist(double precision, double precision) TO wwuser;


--
-- Name: FUNCTION g_cube_consistent(internal, public.cube, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_cube_consistent(internal, public.cube, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION g_cube_distance(internal, public.cube, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_cube_distance(internal, public.cube, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION g_cube_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_cube_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION g_cube_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_cube_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION g_cube_same(public.cube, public.cube, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_cube_same(public.cube, public.cube, internal) TO wwuser;


--
-- Name: FUNCTION g_cube_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_cube_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION g_int_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_int_compress(internal) TO wwuser;


--
-- Name: FUNCTION g_int_consistent(internal, integer[], smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_int_consistent(internal, integer[], smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION g_int_decompress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_int_decompress(internal) TO wwuser;


--
-- Name: FUNCTION g_int_options(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_int_options(internal) TO wwuser;


--
-- Name: FUNCTION g_int_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_int_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION g_int_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_int_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION g_int_same(integer[], integer[], internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_int_same(integer[], integer[], internal) TO wwuser;


--
-- Name: FUNCTION g_int_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_int_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION g_intbig_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_intbig_compress(internal) TO wwuser;


--
-- Name: FUNCTION g_intbig_consistent(internal, integer[], smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_intbig_consistent(internal, integer[], smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION g_intbig_decompress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_intbig_decompress(internal) TO wwuser;


--
-- Name: FUNCTION g_intbig_options(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_intbig_options(internal) TO wwuser;


--
-- Name: FUNCTION g_intbig_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_intbig_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION g_intbig_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_intbig_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION g_intbig_same(public.intbig_gkey, public.intbig_gkey, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_intbig_same(public.intbig_gkey, public.intbig_gkey, internal) TO wwuser;


--
-- Name: FUNCTION g_intbig_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.g_intbig_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bit_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bit_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_bit_consistent(internal, bit, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bit_consistent(internal, bit, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bit_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bit_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bit_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bit_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bit_same(public.gbtreekey_var, public.gbtreekey_var, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bit_same(public.gbtreekey_var, public.gbtreekey_var, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bit_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bit_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bool_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bool_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_bool_consistent(internal, boolean, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bool_consistent(internal, boolean, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bool_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bool_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_bool_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bool_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bool_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bool_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bool_same(public.gbtreekey2, public.gbtreekey2, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bool_same(public.gbtreekey2, public.gbtreekey2, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bool_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bool_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bpchar_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bpchar_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_bpchar_consistent(internal, character, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bpchar_consistent(internal, character, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bytea_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bytea_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_bytea_consistent(internal, bytea, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bytea_consistent(internal, bytea, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bytea_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bytea_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bytea_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bytea_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bytea_same(public.gbtreekey_var, public.gbtreekey_var, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bytea_same(public.gbtreekey_var, public.gbtreekey_var, internal) TO wwuser;


--
-- Name: FUNCTION gbt_bytea_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_bytea_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_cash_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_cash_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_cash_consistent(internal, money, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_cash_consistent(internal, money, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_cash_distance(internal, money, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_cash_distance(internal, money, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_cash_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_cash_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_cash_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_cash_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_cash_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_cash_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_cash_same(public.gbtreekey16, public.gbtreekey16, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_cash_same(public.gbtreekey16, public.gbtreekey16, internal) TO wwuser;


--
-- Name: FUNCTION gbt_cash_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_cash_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_date_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_date_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_date_consistent(internal, date, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_date_consistent(internal, date, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_date_distance(internal, date, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_date_distance(internal, date, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_date_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_date_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_date_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_date_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_date_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_date_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_date_same(public.gbtreekey8, public.gbtreekey8, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_date_same(public.gbtreekey8, public.gbtreekey8, internal) TO wwuser;


--
-- Name: FUNCTION gbt_date_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_date_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_decompress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_decompress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_enum_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_enum_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_enum_consistent(internal, anyenum, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_enum_consistent(internal, anyenum, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_enum_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_enum_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_enum_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_enum_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_enum_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_enum_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_enum_same(public.gbtreekey8, public.gbtreekey8, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_enum_same(public.gbtreekey8, public.gbtreekey8, internal) TO wwuser;


--
-- Name: FUNCTION gbt_enum_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_enum_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_float4_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float4_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_float4_consistent(internal, real, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float4_consistent(internal, real, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_float4_distance(internal, real, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float4_distance(internal, real, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_float4_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float4_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_float4_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float4_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_float4_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float4_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_float4_same(public.gbtreekey8, public.gbtreekey8, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float4_same(public.gbtreekey8, public.gbtreekey8, internal) TO wwuser;


--
-- Name: FUNCTION gbt_float4_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float4_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_float8_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float8_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_float8_consistent(internal, double precision, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float8_consistent(internal, double precision, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_float8_distance(internal, double precision, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float8_distance(internal, double precision, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_float8_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float8_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_float8_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float8_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_float8_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float8_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_float8_same(public.gbtreekey16, public.gbtreekey16, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float8_same(public.gbtreekey16, public.gbtreekey16, internal) TO wwuser;


--
-- Name: FUNCTION gbt_float8_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_float8_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_inet_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_inet_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_inet_consistent(internal, inet, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_inet_consistent(internal, inet, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_inet_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_inet_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_inet_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_inet_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_inet_same(public.gbtreekey16, public.gbtreekey16, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_inet_same(public.gbtreekey16, public.gbtreekey16, internal) TO wwuser;


--
-- Name: FUNCTION gbt_inet_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_inet_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int2_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int2_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_int2_consistent(internal, smallint, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int2_consistent(internal, smallint, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int2_distance(internal, smallint, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int2_distance(internal, smallint, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int2_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int2_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_int2_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int2_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int2_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int2_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int2_same(public.gbtreekey4, public.gbtreekey4, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int2_same(public.gbtreekey4, public.gbtreekey4, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int2_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int2_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int4_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int4_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_int4_consistent(internal, integer, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int4_consistent(internal, integer, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int4_distance(internal, integer, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int4_distance(internal, integer, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int4_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int4_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_int4_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int4_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int4_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int4_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int4_same(public.gbtreekey8, public.gbtreekey8, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int4_same(public.gbtreekey8, public.gbtreekey8, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int4_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int4_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int8_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int8_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_int8_consistent(internal, bigint, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int8_consistent(internal, bigint, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int8_distance(internal, bigint, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int8_distance(internal, bigint, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int8_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int8_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_int8_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int8_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int8_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int8_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int8_same(public.gbtreekey16, public.gbtreekey16, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int8_same(public.gbtreekey16, public.gbtreekey16, internal) TO wwuser;


--
-- Name: FUNCTION gbt_int8_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_int8_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_intv_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_intv_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_intv_consistent(internal, interval, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_intv_consistent(internal, interval, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_intv_decompress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_intv_decompress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_intv_distance(internal, interval, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_intv_distance(internal, interval, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_intv_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_intv_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_intv_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_intv_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_intv_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_intv_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_intv_same(public.gbtreekey32, public.gbtreekey32, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_intv_same(public.gbtreekey32, public.gbtreekey32, internal) TO wwuser;


--
-- Name: FUNCTION gbt_intv_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_intv_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad8_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad8_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad8_consistent(internal, macaddr8, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad8_consistent(internal, macaddr8, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad8_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad8_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad8_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad8_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad8_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad8_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad8_same(public.gbtreekey16, public.gbtreekey16, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad8_same(public.gbtreekey16, public.gbtreekey16, internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad8_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad8_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad_consistent(internal, macaddr, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad_consistent(internal, macaddr, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad_same(public.gbtreekey16, public.gbtreekey16, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad_same(public.gbtreekey16, public.gbtreekey16, internal) TO wwuser;


--
-- Name: FUNCTION gbt_macad_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_macad_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_numeric_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_numeric_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_numeric_consistent(internal, numeric, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_numeric_consistent(internal, numeric, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_numeric_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_numeric_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_numeric_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_numeric_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_numeric_same(public.gbtreekey_var, public.gbtreekey_var, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_numeric_same(public.gbtreekey_var, public.gbtreekey_var, internal) TO wwuser;


--
-- Name: FUNCTION gbt_numeric_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_numeric_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_oid_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_oid_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_oid_consistent(internal, oid, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_oid_consistent(internal, oid, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_oid_distance(internal, oid, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_oid_distance(internal, oid, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_oid_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_oid_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_oid_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_oid_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_oid_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_oid_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_oid_same(public.gbtreekey8, public.gbtreekey8, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_oid_same(public.gbtreekey8, public.gbtreekey8, internal) TO wwuser;


--
-- Name: FUNCTION gbt_oid_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_oid_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_text_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_text_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_text_consistent(internal, text, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_text_consistent(internal, text, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_text_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_text_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_text_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_text_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_text_same(public.gbtreekey_var, public.gbtreekey_var, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_text_same(public.gbtreekey_var, public.gbtreekey_var, internal) TO wwuser;


--
-- Name: FUNCTION gbt_text_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_text_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_time_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_time_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_time_consistent(internal, time without time zone, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_time_consistent(internal, time without time zone, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_time_distance(internal, time without time zone, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_time_distance(internal, time without time zone, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_time_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_time_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_time_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_time_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_time_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_time_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_time_same(public.gbtreekey16, public.gbtreekey16, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_time_same(public.gbtreekey16, public.gbtreekey16, internal) TO wwuser;


--
-- Name: FUNCTION gbt_time_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_time_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_timetz_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_timetz_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_timetz_consistent(internal, time with time zone, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_timetz_consistent(internal, time with time zone, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_ts_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_ts_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_ts_consistent(internal, timestamp without time zone, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_ts_consistent(internal, timestamp without time zone, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_ts_distance(internal, timestamp without time zone, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_ts_distance(internal, timestamp without time zone, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_ts_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_ts_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_ts_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_ts_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_ts_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_ts_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_ts_same(public.gbtreekey16, public.gbtreekey16, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_ts_same(public.gbtreekey16, public.gbtreekey16, internal) TO wwuser;


--
-- Name: FUNCTION gbt_ts_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_ts_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_tstz_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_tstz_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_tstz_consistent(internal, timestamp with time zone, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_tstz_consistent(internal, timestamp with time zone, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_tstz_distance(internal, timestamp with time zone, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_tstz_distance(internal, timestamp with time zone, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_uuid_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_uuid_compress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_uuid_consistent(internal, uuid, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_uuid_consistent(internal, uuid, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gbt_uuid_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_uuid_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gbt_uuid_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_uuid_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_uuid_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_uuid_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_uuid_same(public.gbtreekey32, public.gbtreekey32, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_uuid_same(public.gbtreekey32, public.gbtreekey32, internal) TO wwuser;


--
-- Name: FUNCTION gbt_uuid_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_uuid_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gbt_var_decompress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_var_decompress(internal) TO wwuser;


--
-- Name: FUNCTION gbt_var_fetch(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gbt_var_fetch(internal) TO wwuser;


--
-- Name: FUNCTION gc_to_sec(double precision); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gc_to_sec(double precision) TO wwuser;


--
-- Name: FUNCTION gen_random_bytes(integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gen_random_bytes(integer) TO wwuser;


--
-- Name: FUNCTION gen_random_uuid(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gen_random_uuid() TO wwuser;


--
-- Name: FUNCTION gen_salt(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gen_salt(text) TO wwuser;


--
-- Name: FUNCTION gen_salt(text, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gen_salt(text, integer) TO wwuser;


--
-- Name: FUNCTION geo_distance(point, point); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.geo_distance(point, point) TO wwuser;


--
-- Name: FUNCTION ghstore_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ghstore_compress(internal) TO wwuser;


--
-- Name: FUNCTION ghstore_consistent(internal, public.hstore, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ghstore_consistent(internal, public.hstore, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION ghstore_decompress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ghstore_decompress(internal) TO wwuser;


--
-- Name: FUNCTION ghstore_options(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ghstore_options(internal) TO wwuser;


--
-- Name: FUNCTION ghstore_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ghstore_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION ghstore_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ghstore_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION ghstore_same(public.ghstore, public.ghstore, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ghstore_same(public.ghstore, public.ghstore, internal) TO wwuser;


--
-- Name: FUNCTION ghstore_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ghstore_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_anyenum(anyenum, anyenum, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_anyenum(anyenum, anyenum, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_bit(bit, bit, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_bit(bit, bit, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_bool(boolean, boolean, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_bool(boolean, boolean, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_bpchar(character, character, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_bpchar(character, character, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_bytea(bytea, bytea, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_bytea(bytea, bytea, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_char("char", "char", smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_char("char", "char", smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_cidr(cidr, cidr, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_cidr(cidr, cidr, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_date(date, date, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_date(date, date, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_float4(real, real, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_float4(real, real, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_float8(double precision, double precision, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_float8(double precision, double precision, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_inet(inet, inet, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_inet(inet, inet, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_int2(smallint, smallint, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_int2(smallint, smallint, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_int4(integer, integer, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_int4(integer, integer, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_int8(bigint, bigint, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_int8(bigint, bigint, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_interval(interval, interval, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_interval(interval, interval, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_macaddr(macaddr, macaddr, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_macaddr(macaddr, macaddr, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_macaddr8(macaddr8, macaddr8, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_macaddr8(macaddr8, macaddr8, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_money(money, money, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_money(money, money, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_name(name, name, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_name(name, name, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_numeric(numeric, numeric, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_numeric(numeric, numeric, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_oid(oid, oid, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_oid(oid, oid, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_text(text, text, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_text(text, text, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_time(time without time zone, time without time zone, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_time(time without time zone, time without time zone, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_timestamp(timestamp without time zone, timestamp without time zone, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_timestamp(timestamp without time zone, timestamp without time zone, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_timestamptz(timestamp with time zone, timestamp with time zone, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_timestamptz(timestamp with time zone, timestamp with time zone, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_timetz(time with time zone, time with time zone, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_timetz(time with time zone, time with time zone, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_uuid(uuid, uuid, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_uuid(uuid, uuid, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_compare_prefix_varbit(bit varying, bit varying, smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_compare_prefix_varbit(bit varying, bit varying, smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_consistent_hstore(internal, smallint, public.hstore, integer, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_consistent_hstore(internal, smallint, public.hstore, integer, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_enum_cmp(anyenum, anyenum); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_enum_cmp(anyenum, anyenum) TO wwuser;


--
-- Name: FUNCTION gin_extract_hstore(public.hstore, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_hstore(public.hstore, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_hstore_query(public.hstore, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_hstore_query(public.hstore, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_anyenum(anyenum, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_anyenum(anyenum, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_bit(bit, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_bit(bit, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_bool(boolean, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_bool(boolean, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_bpchar(character, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_bpchar(character, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_bytea(bytea, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_bytea(bytea, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_char("char", internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_char("char", internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_cidr(cidr, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_cidr(cidr, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_date(date, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_date(date, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_float4(real, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_float4(real, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_float8(double precision, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_float8(double precision, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_inet(inet, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_inet(inet, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_int2(smallint, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_int2(smallint, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_int4(integer, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_int4(integer, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_int8(bigint, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_int8(bigint, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_interval(interval, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_interval(interval, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_macaddr(macaddr, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_macaddr(macaddr, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_macaddr8(macaddr8, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_macaddr8(macaddr8, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_money(money, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_money(money, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_name(name, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_name(name, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_numeric(numeric, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_numeric(numeric, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_oid(oid, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_oid(oid, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_text(text, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_text(text, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_time(time without time zone, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_time(time without time zone, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_timestamp(timestamp without time zone, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_timestamp(timestamp without time zone, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_timestamptz(timestamp with time zone, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_timestamptz(timestamp with time zone, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_timetz(time with time zone, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_timetz(time with time zone, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_trgm(text, internal, smallint, internal, internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_trgm(text, internal, smallint, internal, internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_uuid(uuid, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_uuid(uuid, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_query_varbit(bit varying, internal, smallint, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_query_varbit(bit varying, internal, smallint, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_anyenum(anyenum, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_anyenum(anyenum, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_bit(bit, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_bit(bit, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_bool(boolean, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_bool(boolean, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_bpchar(character, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_bpchar(character, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_bytea(bytea, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_bytea(bytea, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_char("char", internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_char("char", internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_cidr(cidr, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_cidr(cidr, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_date(date, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_date(date, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_float4(real, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_float4(real, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_float8(double precision, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_float8(double precision, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_inet(inet, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_inet(inet, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_int2(smallint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_int2(smallint, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_int4(integer, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_int4(integer, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_int8(bigint, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_int8(bigint, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_interval(interval, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_interval(interval, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_macaddr(macaddr, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_macaddr(macaddr, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_macaddr8(macaddr8, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_macaddr8(macaddr8, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_money(money, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_money(money, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_name(name, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_name(name, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_numeric(numeric, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_numeric(numeric, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_oid(oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_oid(oid, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_text(text, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_text(text, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_time(time without time zone, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_time(time without time zone, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_timestamp(timestamp without time zone, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_timestamp(timestamp without time zone, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_timestamptz(timestamp with time zone, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_timestamptz(timestamp with time zone, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_timetz(time with time zone, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_timetz(time with time zone, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_trgm(text, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_trgm(text, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_uuid(uuid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_uuid(uuid, internal) TO wwuser;


--
-- Name: FUNCTION gin_extract_value_varbit(bit varying, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_extract_value_varbit(bit varying, internal) TO wwuser;


--
-- Name: FUNCTION gin_numeric_cmp(numeric, numeric); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_numeric_cmp(numeric, numeric) TO wwuser;


--
-- Name: FUNCTION gin_trgm_consistent(internal, smallint, text, integer, internal, internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_trgm_consistent(internal, smallint, text, integer, internal, internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gin_trgm_triconsistent(internal, smallint, text, integer, internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gin_trgm_triconsistent(internal, smallint, text, integer, internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION ginint4_consistent(internal, smallint, integer[], integer, internal, internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ginint4_consistent(internal, smallint, integer[], integer, internal, internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION ginint4_queryextract(integer[], internal, smallint, internal, internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ginint4_queryextract(integer[], internal, smallint, internal, internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gtrgm_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gtrgm_compress(internal) TO wwuser;


--
-- Name: FUNCTION gtrgm_consistent(internal, text, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gtrgm_consistent(internal, text, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gtrgm_decompress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gtrgm_decompress(internal) TO wwuser;


--
-- Name: FUNCTION gtrgm_distance(internal, text, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gtrgm_distance(internal, text, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION gtrgm_options(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gtrgm_options(internal) TO wwuser;


--
-- Name: FUNCTION gtrgm_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gtrgm_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION gtrgm_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gtrgm_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION gtrgm_same(public.gtrgm, public.gtrgm, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gtrgm_same(public.gtrgm, public.gtrgm, internal) TO wwuser;


--
-- Name: FUNCTION gtrgm_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.gtrgm_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION hmac(bytea, bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hmac(bytea, bytea, text) TO wwuser;


--
-- Name: FUNCTION hmac(text, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hmac(text, text, text) TO wwuser;


--
-- Name: FUNCTION hs_concat(public.hstore, public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hs_concat(public.hstore, public.hstore) TO wwuser;


--
-- Name: FUNCTION hs_contained(public.hstore, public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hs_contained(public.hstore, public.hstore) TO wwuser;


--
-- Name: FUNCTION hs_contains(public.hstore, public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hs_contains(public.hstore, public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore(record); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore(record) TO wwuser;


--
-- Name: FUNCTION hstore(text[], text[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore(text[], text[]) TO wwuser;


--
-- Name: FUNCTION hstore(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore(text, text) TO wwuser;


--
-- Name: FUNCTION hstore_cmp(public.hstore, public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_cmp(public.hstore, public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_eq(public.hstore, public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_eq(public.hstore, public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_ge(public.hstore, public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_ge(public.hstore, public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_gt(public.hstore, public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_gt(public.hstore, public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_hash(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_hash(public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_hash_extended(public.hstore, bigint); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_hash_extended(public.hstore, bigint) TO wwuser;


--
-- Name: FUNCTION hstore_le(public.hstore, public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_le(public.hstore, public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_lt(public.hstore, public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_lt(public.hstore, public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_ne(public.hstore, public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_ne(public.hstore, public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_to_array(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_to_array(public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_to_json_loose(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_to_json_loose(public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_to_jsonb_loose(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_to_jsonb_loose(public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_to_matrix(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_to_matrix(public.hstore) TO wwuser;


--
-- Name: FUNCTION hstore_version_diag(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.hstore_version_diag(public.hstore) TO wwuser;


--
-- Name: FUNCTION icount(integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.icount(integer[]) TO wwuser;


--
-- Name: FUNCTION idx(integer[], integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.idx(integer[], integer) TO wwuser;


--
-- Name: FUNCTION index(public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.index(public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION index(public.ltree, public.ltree, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.index(public.ltree, public.ltree, integer) TO wwuser;


--
-- Name: FUNCTION int2_dist(smallint, smallint); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.int2_dist(smallint, smallint) TO wwuser;


--
-- Name: FUNCTION int4_dist(integer, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.int4_dist(integer, integer) TO wwuser;


--
-- Name: FUNCTION int8_dist(bigint, bigint); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.int8_dist(bigint, bigint) TO wwuser;


--
-- Name: FUNCTION intarray_del_elem(integer[], integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.intarray_del_elem(integer[], integer) TO wwuser;


--
-- Name: FUNCTION intarray_push_array(integer[], integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.intarray_push_array(integer[], integer[]) TO wwuser;


--
-- Name: FUNCTION intarray_push_elem(integer[], integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.intarray_push_elem(integer[], integer) TO wwuser;


--
-- Name: FUNCTION interval_dist(interval, interval); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.interval_dist(interval, interval) TO wwuser;


--
-- Name: FUNCTION intset(integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.intset(integer) TO wwuser;


--
-- Name: FUNCTION intset_subtract(integer[], integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.intset_subtract(integer[], integer[]) TO wwuser;


--
-- Name: FUNCTION intset_union_elem(integer[], integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.intset_union_elem(integer[], integer) TO wwuser;


--
-- Name: FUNCTION isdefined(public.hstore, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.isdefined(public.hstore, text) TO wwuser;


--
-- Name: FUNCTION isexists(public.hstore, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.isexists(public.hstore, text) TO wwuser;


--
-- Name: FUNCTION latitude(public.earth); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.latitude(public.earth) TO wwuser;


--
-- Name: FUNCTION lca(public.ltree[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lca(public.ltree[]) TO wwuser;


--
-- Name: FUNCTION lca(public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lca(public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION lca(public.ltree, public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lca(public.ltree, public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION lca(public.ltree, public.ltree, public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lca(public.ltree, public.ltree, public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION lca(public.ltree, public.ltree, public.ltree, public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lca(public.ltree, public.ltree, public.ltree, public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION lca(public.ltree, public.ltree, public.ltree, public.ltree, public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lca(public.ltree, public.ltree, public.ltree, public.ltree, public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION lca(public.ltree, public.ltree, public.ltree, public.ltree, public.ltree, public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lca(public.ltree, public.ltree, public.ltree, public.ltree, public.ltree, public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION lca(public.ltree, public.ltree, public.ltree, public.ltree, public.ltree, public.ltree, public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lca(public.ltree, public.ltree, public.ltree, public.ltree, public.ltree, public.ltree, public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION levenshtein(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.levenshtein(text, text) TO wwuser;


--
-- Name: FUNCTION levenshtein(text, text, integer, integer, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.levenshtein(text, text, integer, integer, integer) TO wwuser;


--
-- Name: FUNCTION levenshtein_less_equal(text, text, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.levenshtein_less_equal(text, text, integer) TO wwuser;


--
-- Name: FUNCTION levenshtein_less_equal(text, text, integer, integer, integer, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.levenshtein_less_equal(text, text, integer, integer, integer, integer) TO wwuser;


--
-- Name: FUNCTION ll_to_earth(double precision, double precision); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ll_to_earth(double precision, double precision) TO wwuser;


--
-- Name: FUNCTION longitude(public.earth); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.longitude(public.earth) TO wwuser;


--
-- Name: FUNCTION lt_q_regex(public.ltree, public.lquery[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lt_q_regex(public.ltree, public.lquery[]) TO wwuser;


--
-- Name: FUNCTION lt_q_rregex(public.lquery[], public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.lt_q_rregex(public.lquery[], public.ltree) TO wwuser;


--
-- Name: FUNCTION ltq_regex(public.ltree, public.lquery); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltq_regex(public.ltree, public.lquery) TO wwuser;


--
-- Name: FUNCTION ltq_rregex(public.lquery, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltq_rregex(public.lquery, public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree2text(public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree2text(public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_addltree(public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_addltree(public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_addtext(public.ltree, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_addtext(public.ltree, text) TO wwuser;


--
-- Name: FUNCTION ltree_cmp(public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_cmp(public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_compress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_compress(internal) TO wwuser;


--
-- Name: FUNCTION ltree_consistent(internal, public.ltree, smallint, oid, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_consistent(internal, public.ltree, smallint, oid, internal) TO wwuser;


--
-- Name: FUNCTION ltree_decompress(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_decompress(internal) TO wwuser;


--
-- Name: FUNCTION ltree_eq(public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_eq(public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_ge(public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_ge(public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_gist_options(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_gist_options(internal) TO wwuser;


--
-- Name: FUNCTION ltree_gt(public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_gt(public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_isparent(public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_isparent(public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_le(public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_le(public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_lt(public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_lt(public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_ne(public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_ne(public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_penalty(internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_penalty(internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION ltree_picksplit(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_picksplit(internal, internal) TO wwuser;


--
-- Name: FUNCTION ltree_risparent(public.ltree, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_risparent(public.ltree, public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_same(public.ltree_gist, public.ltree_gist, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_same(public.ltree_gist, public.ltree_gist, internal) TO wwuser;


--
-- Name: FUNCTION ltree_textadd(text, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_textadd(text, public.ltree) TO wwuser;


--
-- Name: FUNCTION ltree_union(internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltree_union(internal, internal) TO wwuser;


--
-- Name: FUNCTION ltreeparentsel(internal, oid, internal, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltreeparentsel(internal, oid, internal, integer) TO wwuser;


--
-- Name: FUNCTION ltxtq_exec(public.ltree, public.ltxtquery); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltxtq_exec(public.ltree, public.ltxtquery) TO wwuser;


--
-- Name: FUNCTION ltxtq_rexec(public.ltxtquery, public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ltxtq_rexec(public.ltxtquery, public.ltree) TO wwuser;


--
-- Name: FUNCTION metaphone(text, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.metaphone(text, integer) TO wwuser;


--
-- Name: FUNCTION nlevel(public.ltree); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.nlevel(public.ltree) TO wwuser;


--
-- Name: FUNCTION normal_rand(integer, double precision, double precision); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.normal_rand(integer, double precision, double precision) TO wwuser;


--
-- Name: FUNCTION oid_dist(oid, oid); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.oid_dist(oid, oid) TO wwuser;


--
-- Name: FUNCTION pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO wwuser;


--
-- Name: FUNCTION pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO wwuser;


--
-- Name: FUNCTION pgp_armor_headers(text, OUT key text, OUT value text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_armor_headers(text, OUT key text, OUT value text) TO wwuser;


--
-- Name: FUNCTION pgp_key_id(bytea); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_key_id(bytea) TO wwuser;


--
-- Name: FUNCTION pgp_pub_decrypt(bytea, bytea); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_pub_decrypt(bytea, bytea) TO wwuser;


--
-- Name: FUNCTION pgp_pub_decrypt(bytea, bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_pub_decrypt(bytea, bytea, text) TO wwuser;


--
-- Name: FUNCTION pgp_pub_decrypt(bytea, bytea, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_pub_decrypt(bytea, bytea, text, text) TO wwuser;


--
-- Name: FUNCTION pgp_pub_decrypt_bytea(bytea, bytea); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea) TO wwuser;


--
-- Name: FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea, text) TO wwuser;


--
-- Name: FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO wwuser;


--
-- Name: FUNCTION pgp_pub_encrypt(text, bytea); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_pub_encrypt(text, bytea) TO wwuser;


--
-- Name: FUNCTION pgp_pub_encrypt(text, bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_pub_encrypt(text, bytea, text) TO wwuser;


--
-- Name: FUNCTION pgp_pub_encrypt_bytea(bytea, bytea); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_pub_encrypt_bytea(bytea, bytea) TO wwuser;


--
-- Name: FUNCTION pgp_pub_encrypt_bytea(bytea, bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_pub_encrypt_bytea(bytea, bytea, text) TO wwuser;


--
-- Name: FUNCTION pgp_sym_decrypt(bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_sym_decrypt(bytea, text) TO wwuser;


--
-- Name: FUNCTION pgp_sym_decrypt(bytea, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_sym_decrypt(bytea, text, text) TO wwuser;


--
-- Name: FUNCTION pgp_sym_decrypt_bytea(bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_sym_decrypt_bytea(bytea, text) TO wwuser;


--
-- Name: FUNCTION pgp_sym_decrypt_bytea(bytea, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_sym_decrypt_bytea(bytea, text, text) TO wwuser;


--
-- Name: FUNCTION pgp_sym_encrypt(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_sym_encrypt(text, text) TO wwuser;


--
-- Name: FUNCTION pgp_sym_encrypt(text, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_sym_encrypt(text, text, text) TO wwuser;


--
-- Name: FUNCTION pgp_sym_encrypt_bytea(bytea, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_sym_encrypt_bytea(bytea, text) TO wwuser;


--
-- Name: FUNCTION pgp_sym_encrypt_bytea(bytea, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgp_sym_encrypt_bytea(bytea, text, text) TO wwuser;


--
-- Name: FUNCTION pgrowlocks(relname text, OUT locked_row tid, OUT locker xid, OUT multi boolean, OUT xids xid[], OUT modes text[], OUT pids integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.pgrowlocks(relname text, OUT locked_row tid, OUT locker xid, OUT multi boolean, OUT xids xid[], OUT modes text[], OUT pids integer[]) TO wwuser;


--
-- Name: FUNCTION populate_record(anyelement, public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.populate_record(anyelement, public.hstore) TO wwuser;


--
-- Name: FUNCTION querytree(public.query_int); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.querytree(public.query_int) TO wwuser;


--
-- Name: FUNCTION rboolop(public.query_int, integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.rboolop(public.query_int, integer[]) TO wwuser;


--
-- Name: FUNCTION regexp_match(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.regexp_match(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION regexp_match(public.citext, public.citext, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.regexp_match(public.citext, public.citext, text) TO wwuser;


--
-- Name: FUNCTION regexp_matches(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.regexp_matches(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION regexp_matches(public.citext, public.citext, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.regexp_matches(public.citext, public.citext, text) TO wwuser;


--
-- Name: FUNCTION regexp_replace(public.citext, public.citext, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.regexp_replace(public.citext, public.citext, text) TO wwuser;


--
-- Name: FUNCTION regexp_replace(public.citext, public.citext, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.regexp_replace(public.citext, public.citext, text, text) TO wwuser;


--
-- Name: FUNCTION regexp_split_to_array(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.regexp_split_to_array(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION regexp_split_to_array(public.citext, public.citext, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.regexp_split_to_array(public.citext, public.citext, text) TO wwuser;


--
-- Name: FUNCTION regexp_split_to_table(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.regexp_split_to_table(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION regexp_split_to_table(public.citext, public.citext, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.regexp_split_to_table(public.citext, public.citext, text) TO wwuser;


--
-- Name: FUNCTION replace(public.citext, public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.replace(public.citext, public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION sec_to_gc(double precision); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.sec_to_gc(double precision) TO wwuser;


--
-- Name: FUNCTION set_limit(real); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.set_limit(real) TO wwuser;


--
-- Name: FUNCTION show_limit(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.show_limit() TO wwuser;


--
-- Name: FUNCTION show_trgm(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.show_trgm(text) TO wwuser;


--
-- Name: FUNCTION similarity(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.similarity(text, text) TO wwuser;


--
-- Name: FUNCTION similarity_dist(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.similarity_dist(text, text) TO wwuser;


--
-- Name: FUNCTION similarity_op(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.similarity_op(text, text) TO wwuser;


--
-- Name: FUNCTION skeys(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.skeys(public.hstore) TO wwuser;


--
-- Name: FUNCTION slice(public.hstore, text[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.slice(public.hstore, text[]) TO wwuser;


--
-- Name: FUNCTION slice_array(public.hstore, text[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.slice_array(public.hstore, text[]) TO wwuser;


--
-- Name: FUNCTION sort(integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.sort(integer[]) TO wwuser;


--
-- Name: FUNCTION sort(integer[], text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.sort(integer[], text) TO wwuser;


--
-- Name: FUNCTION sort_asc(integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.sort_asc(integer[]) TO wwuser;


--
-- Name: FUNCTION sort_desc(integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.sort_desc(integer[]) TO wwuser;


--
-- Name: FUNCTION soundex(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.soundex(text) TO wwuser;


--
-- Name: FUNCTION split_part(public.citext, public.citext, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.split_part(public.citext, public.citext, integer) TO wwuser;


--
-- Name: FUNCTION strict_word_similarity(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.strict_word_similarity(text, text) TO wwuser;


--
-- Name: FUNCTION strict_word_similarity_commutator_op(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.strict_word_similarity_commutator_op(text, text) TO wwuser;


--
-- Name: FUNCTION strict_word_similarity_dist_commutator_op(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.strict_word_similarity_dist_commutator_op(text, text) TO wwuser;


--
-- Name: FUNCTION strict_word_similarity_dist_op(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.strict_word_similarity_dist_op(text, text) TO wwuser;


--
-- Name: FUNCTION strict_word_similarity_op(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.strict_word_similarity_op(text, text) TO wwuser;


--
-- Name: FUNCTION strpos(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.strpos(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION subarray(integer[], integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.subarray(integer[], integer) TO wwuser;


--
-- Name: FUNCTION subarray(integer[], integer, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.subarray(integer[], integer, integer) TO wwuser;


--
-- Name: FUNCTION subltree(public.ltree, integer, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.subltree(public.ltree, integer, integer) TO wwuser;


--
-- Name: FUNCTION subpath(public.ltree, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.subpath(public.ltree, integer) TO wwuser;


--
-- Name: FUNCTION subpath(public.ltree, integer, integer); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.subpath(public.ltree, integer, integer) TO wwuser;


--
-- Name: FUNCTION svals(public.hstore); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.svals(public.hstore) TO wwuser;


--
-- Name: FUNCTION tconvert(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.tconvert(text, text) TO wwuser;


--
-- Name: FUNCTION text2ltree(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.text2ltree(text) TO wwuser;


--
-- Name: FUNCTION text_soundex(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.text_soundex(text) TO wwuser;


--
-- Name: FUNCTION texticlike(public.citext, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.texticlike(public.citext, text) TO wwuser;


--
-- Name: FUNCTION texticlike(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.texticlike(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION texticnlike(public.citext, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.texticnlike(public.citext, text) TO wwuser;


--
-- Name: FUNCTION texticnlike(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.texticnlike(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION texticregexeq(public.citext, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.texticregexeq(public.citext, text) TO wwuser;


--
-- Name: FUNCTION texticregexeq(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.texticregexeq(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION texticregexne(public.citext, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.texticregexne(public.citext, text) TO wwuser;


--
-- Name: FUNCTION texticregexne(public.citext, public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.texticregexne(public.citext, public.citext) TO wwuser;


--
-- Name: FUNCTION time_dist(time without time zone, time without time zone); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.time_dist(time without time zone, time without time zone) TO wwuser;


--
-- Name: FUNCTION translate(public.citext, public.citext, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.translate(public.citext, public.citext, text) TO wwuser;


--
-- Name: FUNCTION ts_dist(timestamp without time zone, timestamp without time zone); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.ts_dist(timestamp without time zone, timestamp without time zone) TO wwuser;


--
-- Name: FUNCTION tstz_dist(timestamp with time zone, timestamp with time zone); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.tstz_dist(timestamp with time zone, timestamp with time zone) TO wwuser;


--
-- Name: FUNCTION unaccent(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.unaccent(text) TO wwuser;


--
-- Name: FUNCTION unaccent(regdictionary, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.unaccent(regdictionary, text) TO wwuser;


--
-- Name: FUNCTION unaccent_init(internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.unaccent_init(internal) TO wwuser;


--
-- Name: FUNCTION unaccent_lexize(internal, internal, internal, internal); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.unaccent_lexize(internal, internal, internal, internal) TO wwuser;


--
-- Name: FUNCTION uniq(integer[]); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.uniq(integer[]) TO wwuser;


--
-- Name: FUNCTION uuid_generate_v1(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.uuid_generate_v1() TO wwuser;


--
-- Name: FUNCTION uuid_generate_v1mc(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.uuid_generate_v1mc() TO wwuser;


--
-- Name: FUNCTION uuid_generate_v3(namespace uuid, name text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.uuid_generate_v3(namespace uuid, name text) TO wwuser;


--
-- Name: FUNCTION uuid_generate_v4(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.uuid_generate_v4() TO wwuser;


--
-- Name: FUNCTION uuid_generate_v5(namespace uuid, name text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.uuid_generate_v5(namespace uuid, name text) TO wwuser;


--
-- Name: FUNCTION uuid_nil(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.uuid_nil() TO wwuser;


--
-- Name: FUNCTION uuid_ns_dns(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.uuid_ns_dns() TO wwuser;


--
-- Name: FUNCTION uuid_ns_oid(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.uuid_ns_oid() TO wwuser;


--
-- Name: FUNCTION uuid_ns_url(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.uuid_ns_url() TO wwuser;


--
-- Name: FUNCTION uuid_ns_x500(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.uuid_ns_x500() TO wwuser;


--
-- Name: FUNCTION word_similarity(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.word_similarity(text, text) TO wwuser;


--
-- Name: FUNCTION word_similarity_commutator_op(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.word_similarity_commutator_op(text, text) TO wwuser;


--
-- Name: FUNCTION word_similarity_dist_commutator_op(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.word_similarity_dist_commutator_op(text, text) TO wwuser;


--
-- Name: FUNCTION word_similarity_dist_op(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.word_similarity_dist_op(text, text) TO wwuser;


--
-- Name: FUNCTION word_similarity_op(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.word_similarity_op(text, text) TO wwuser;


--
-- Name: FUNCTION xml_encode_special_chars(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xml_encode_special_chars(text) TO wwuser;


--
-- Name: FUNCTION xml_valid(text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xml_valid(text) TO wwuser;


--
-- Name: FUNCTION xpath_bool(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xpath_bool(text, text) TO wwuser;


--
-- Name: FUNCTION xpath_list(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xpath_list(text, text) TO wwuser;


--
-- Name: FUNCTION xpath_list(text, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xpath_list(text, text, text) TO wwuser;


--
-- Name: FUNCTION xpath_nodeset(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xpath_nodeset(text, text) TO wwuser;


--
-- Name: FUNCTION xpath_nodeset(text, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xpath_nodeset(text, text, text) TO wwuser;


--
-- Name: FUNCTION xpath_nodeset(text, text, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xpath_nodeset(text, text, text, text) TO wwuser;


--
-- Name: FUNCTION xpath_number(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xpath_number(text, text) TO wwuser;


--
-- Name: FUNCTION xpath_string(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xpath_string(text, text) TO wwuser;


--
-- Name: FUNCTION xpath_table(text, text, text, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xpath_table(text, text, text, text, text) TO wwuser;


--
-- Name: FUNCTION xslt_process(text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xslt_process(text, text) TO wwuser;


--
-- Name: FUNCTION xslt_process(text, text, text); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.xslt_process(text, text, text) TO wwuser;


--
-- Name: FUNCTION max(public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.max(public.citext) TO wwuser;


--
-- Name: FUNCTION min(public.citext); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.min(public.citext) TO wwuser;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO wwuser;


--
-- Name: DEFAULT PRIVILEGES FOR TYPES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO wwuser;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO wwuser;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES TO wwuser;


--
-- PostgreSQL database dump complete
--

