--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galactic_group; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galactic_group (
    galactic_group_id character varying(10) NOT NULL,
    name character varying(50),
    number integer,
    description text,
    num integer NOT NULL,
    unique_col integer NOT NULL
);


ALTER TABLE public.galactic_group OWNER TO freecodecamp;

--
-- Name: galactic_group_num_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galactic_group_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galactic_group_num_seq OWNER TO freecodecamp;

--
-- Name: galactic_group_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galactic_group_num_seq OWNED BY public.galactic_group.num;


--
-- Name: galactic_group_unique_col_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galactic_group_unique_col_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galactic_group_unique_col_seq OWNER TO freecodecamp;

--
-- Name: galactic_group_unique_col_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galactic_group_unique_col_seq OWNED BY public.galactic_group.unique_col;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id character varying(10) NOT NULL,
    name character varying NOT NULL,
    age integer,
    distancefromearth integer,
    speed numeric,
    receding boolean,
    approaching boolean,
    dist integer,
    description text,
    unique_col integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_unique_col_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_unique_col_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_unique_col_seq OWNER TO freecodecamp;

--
-- Name: galaxy_unique_col_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_unique_col_seq OWNED BY public.galaxy.unique_col;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id character varying(10) NOT NULL,
    name character varying NOT NULL,
    age integer,
    distancefromplanet integer,
    period numeric,
    habitable boolean,
    haswater boolean,
    dist integer,
    description text,
    planet_id character varying,
    unique_col integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_unique_col_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_unique_col_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_unique_col_seq OWNER TO freecodecamp;

--
-- Name: moon_unique_col_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_unique_col_seq OWNED BY public.moon.unique_col;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id character varying(10) NOT NULL,
    name character varying NOT NULL,
    age integer,
    distancefromearth integer,
    period numeric,
    habitable boolean,
    hasmoon boolean,
    star_id character varying(10),
    dist integer,
    description text,
    unique_col integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_unique_col_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_unique_col_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_unique_col_seq OWNER TO freecodecamp;

--
-- Name: planet_unique_col_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_unique_col_seq OWNED BY public.planet.unique_col;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id character varying(10) NOT NULL,
    name character varying NOT NULL,
    age integer,
    distancefromearth integer,
    luminousity numeric,
    living boolean,
    redshifting boolean,
    galaxy_id character varying(10),
    dist integer,
    description text,
    unique_col integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_unique_col_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_unique_col_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_unique_col_seq OWNER TO freecodecamp;

--
-- Name: star_unique_col_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_unique_col_seq OWNED BY public.star.unique_col;


--
-- Name: galactic_group num; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_group ALTER COLUMN num SET DEFAULT nextval('public.galactic_group_num_seq'::regclass);


--
-- Name: galactic_group unique_col; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_group ALTER COLUMN unique_col SET DEFAULT nextval('public.galactic_group_unique_col_seq'::regclass);


--
-- Name: galaxy unique_col; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN unique_col SET DEFAULT nextval('public.galaxy_unique_col_seq'::regclass);


--
-- Name: moon unique_col; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN unique_col SET DEFAULT nextval('public.moon_unique_col_seq'::regclass);


--
-- Name: planet unique_col; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN unique_col SET DEFAULT nextval('public.planet_unique_col_seq'::regclass);


--
-- Name: star unique_col; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN unique_col SET DEFAULT nextval('public.star_unique_col_seq'::regclass);


--
-- Data for Name: galactic_group; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galactic_group VALUES ('G1', 'Group1', NULL, NULL, 1, 1);
INSERT INTO public.galactic_group VALUES ('G2', 'Group2', NULL, NULL, 2, 2);
INSERT INTO public.galactic_group VALUES ('G3', 'Group3', NULL, NULL, 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('andro', 'andromeda', 10000000, 100000, 301, false, false, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('NGC4038', 'antennae', NULL, 145000000, NULL, true, false, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES ('NGC4622', 'backward', NULL, 111000000, NULL, true, false, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES ('NG4826', 'BlackEye', NULL, 17000000, NULL, true, false, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES ('NGC3031', 'Messier81', NULL, 12000000, NULL, false, true, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES ('NGC4567', 'BUTTERFLY', NULL, 60000000, NULL, false, false, NULL, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('m1', 'moon1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Earth', 1);
INSERT INTO public.moon VALUES ('m2', 'moon2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P1', 2);
INSERT INTO public.moon VALUES ('m3', 'moon3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P3', 3);
INSERT INTO public.moon VALUES ('m4', 'moon4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p4', 4);
INSERT INTO public.moon VALUES ('m5', 'moon5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P5', 5);
INSERT INTO public.moon VALUES ('m6', 'moon6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P6', 6);
INSERT INTO public.moon VALUES ('m7', 'moon7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mecury', 7);
INSERT INTO public.moon VALUES ('m8', 'moon8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venus', 8);
INSERT INTO public.moon VALUES ('m9', 'moon9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Uranus', 9);
INSERT INTO public.moon VALUES ('m10', 'moon10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Earth', 10);
INSERT INTO public.moon VALUES ('m11', 'moon11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Earth', 11);
INSERT INTO public.moon VALUES ('m12', 'moon12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Earth', 12);
INSERT INTO public.moon VALUES ('m13', 'moon13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Earth', 13);
INSERT INTO public.moon VALUES ('m14', 'moon14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P1', 14);
INSERT INTO public.moon VALUES ('m21', 'moon21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P3', 15);
INSERT INTO public.moon VALUES ('m15', 'moon15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p4', 16);
INSERT INTO public.moon VALUES ('m16', 'moon16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P5', 17);
INSERT INTO public.moon VALUES ('m17', 'moon17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P6', 18);
INSERT INTO public.moon VALUES ('m18', 'moon18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mecury', 19);
INSERT INTO public.moon VALUES ('m19', 'moon19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venus', 20);
INSERT INTO public.moon VALUES ('m20', 'moon20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Uranus', 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 'Earth', NULL, NULL, NULL, NULL, NULL, 'GJ247', NULL, NULL, 1);
INSERT INTO public.planet VALUES ('P1', 'Planet1', NULL, NULL, NULL, NULL, NULL, 'GJ246', NULL, NULL, 2);
INSERT INTO public.planet VALUES ('P2', 'Planet2', NULL, NULL, NULL, NULL, NULL, 'GJ249', NULL, NULL, 3);
INSERT INTO public.planet VALUES ('P3', 'Planet3', NULL, NULL, NULL, NULL, NULL, 'GJ248', NULL, NULL, 4);
INSERT INTO public.planet VALUES ('P4', 'Planet4', NULL, NULL, NULL, NULL, NULL, 'GJ245', NULL, NULL, 5);
INSERT INTO public.planet VALUES ('P5', 'Planet5', NULL, NULL, NULL, NULL, NULL, 'GJ247', NULL, NULL, 6);
INSERT INTO public.planet VALUES ('P6', 'Planet6', NULL, NULL, NULL, NULL, NULL, 'GJ248', NULL, NULL, 7);
INSERT INTO public.planet VALUES ('Mecury', 'Mecury', NULL, NULL, NULL, NULL, NULL, 'GJ249', NULL, NULL, 8);
INSERT INTO public.planet VALUES ('Venus', 'Venus', NULL, NULL, NULL, NULL, NULL, 'GJ245', NULL, NULL, 9);
INSERT INTO public.planet VALUES ('Mars', 'Mars', NULL, NULL, NULL, NULL, NULL, 'GJ246', NULL, NULL, 10);
INSERT INTO public.planet VALUES ('Jupiter', 'Jupiter', NULL, NULL, NULL, NULL, NULL, 'GJ247', NULL, NULL, 11);
INSERT INTO public.planet VALUES ('Saturn', 'Saturn', NULL, NULL, NULL, NULL, NULL, 'GJ248', NULL, NULL, 12);
INSERT INTO public.planet VALUES ('Uranus', 'Uranus', NULL, NULL, NULL, NULL, NULL, 'GJ249', NULL, NULL, 13);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('GJ244', 'sirius', NULL, NULL, NULL, NULL, NULL, 'andro', NULL, NULL, 1);
INSERT INTO public.star VALUES ('GJ245', 'Canopus', NULL, NULL, NULL, NULL, NULL, 'NGC4038', NULL, NULL, 2);
INSERT INTO public.star VALUES ('GJ246', 'Vega', NULL, NULL, NULL, NULL, NULL, 'NGC4622', NULL, NULL, 3);
INSERT INTO public.star VALUES ('GJ247', 'Rigel', NULL, NULL, NULL, NULL, NULL, 'NG4826', NULL, NULL, 4);
INSERT INTO public.star VALUES ('GJ248', 'Spica', NULL, NULL, NULL, NULL, NULL, 'NGC3031', NULL, NULL, 5);
INSERT INTO public.star VALUES ('GJ249', 'Deneb', NULL, NULL, NULL, NULL, NULL, 'NGC4567', NULL, NULL, 6);


--
-- Name: galactic_group_num_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galactic_group_num_seq', 3, true);


--
-- Name: galactic_group_unique_col_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galactic_group_unique_col_seq', 3, true);


--
-- Name: galaxy_unique_col_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_unique_col_seq', 6, true);


--
-- Name: moon_unique_col_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_unique_col_seq', 21, true);


--
-- Name: planet_unique_col_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_unique_col_seq', 13, true);


--
-- Name: star_unique_col_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_unique_col_seq', 6, true);


--
-- Name: galaxy constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint_name UNIQUE (galaxy_id);


--
-- Name: galactic_group galactic_group_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_group
    ADD CONSTRAINT galactic_group_pkey PRIMARY KEY (galactic_group_id);


--
-- Name: galactic_group galactic_group_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_group
    ADD CONSTRAINT galactic_group_unique_col_key UNIQUE (unique_col);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_col_key UNIQUE (unique_col);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_col_key UNIQUE (unique_col);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_col_key UNIQUE (unique_col);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_col_key UNIQUE (unique_col);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_group_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

