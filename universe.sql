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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    radius integer,
    age integer,
    distance_from_sun numeric,
    has_visited boolean,
    is_visible_from_earth boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    radius integer,
    age integer,
    distance_from_sun numeric,
    has_visited boolean,
    is_visible_from_earth boolean,
    planet_id integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    radius integer,
    age integer,
    distance_from_sun numeric,
    has_visited boolean,
    is_visible_from_earth boolean,
    star_id integer,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying NOT NULL,
    age integer,
    description text
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    radius integer,
    age integer,
    distance_from_sun numeric,
    has_visited boolean,
    is_visible_from_earth boolean,
    galaxy_id integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The Milki Way', 99999999, 99999999, NULL, false, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Sigara', 888888, 888899, NULL, false, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Big Bear', 5367567, 888899, NULL, false, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Numbus', 5367567, 888899, NULL, false, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Alpharaz', 537567, 12399, NULL, false, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Veritata', 39367, 3459, NULL, false, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1737, 4401, NULL, true, true, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Calisto', 37, 4401, NULL, true, true, 3, NULL);
INSERT INTO public.moon VALUES (3, 'IO', 56, 4401, NULL, true, true, 3, NULL);
INSERT INTO public.moon VALUES (5, 'Ganimed', 56, 4401, NULL, true, true, 3, NULL);
INSERT INTO public.moon VALUES (6, 'Pan', 56, 4401, NULL, true, true, 8, NULL);
INSERT INTO public.moon VALUES (7, 'Atlas', 56, 4401, NULL, true, true, 8, NULL);
INSERT INTO public.moon VALUES (8, 'Prometey', 56, 4401, NULL, true, true, 8, NULL);
INSERT INTO public.moon VALUES (9, 'Pandora', 56, 4401, NULL, true, true, 8, NULL);
INSERT INTO public.moon VALUES (10, 'Yanus', 41, 4401, NULL, true, true, 8, NULL);
INSERT INTO public.moon VALUES (11, 'Tiffany', 40, 4401, NULL, true, true, 8, NULL);
INSERT INTO public.moon VALUES (12, 'Calipso', 40, 4401, NULL, true, true, 8, NULL);
INSERT INTO public.moon VALUES (13, 'Tiesto', 40, 4401, NULL, true, true, 8, NULL);
INSERT INTO public.moon VALUES (14, 'Diona', 40, 4401, NULL, true, true, 8, NULL);
INSERT INTO public.moon VALUES (15, 'Morfeus', 40, 4401, NULL, true, true, 8, NULL);
INSERT INTO public.moon VALUES (16, 'Gala55', 43, 4401, NULL, true, true, 8, NULL);
INSERT INTO public.moon VALUES (17, 'Elena', 72, 4401, NULL, true, true, 8, NULL);
INSERT INTO public.moon VALUES (18, 'Miranda', 72, 4401, NULL, true, true, 9, NULL);
INSERT INTO public.moon VALUES (19, 'Ariel', 58, 4401, NULL, true, true, 9, NULL);
INSERT INTO public.moon VALUES (20, 'Oberon', 28, 4401, NULL, true, true, 9, NULL);
INSERT INTO public.moon VALUES (21, 'Umbriel', 28, 4401, NULL, true, true, 9, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Eath', 6371, 4501, NULL, true, true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 3389, 4601, NULL, true, true, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Upiter', 69911, 4601, NULL, true, true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Merkuriy', 2389, 4601, NULL, true, true, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Venera', 2389, 4601, NULL, true, true, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Pluton', 2389, 4601, NULL, true, true, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Zerera', 2389, 4601, NULL, true, true, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Saturn', 2389, 4601, NULL, true, true, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Uran', 1389, 4601, NULL, true, true, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Neptun', 1389, 4601, NULL, true, true, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Haume', 1389, 4601, NULL, true, true, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Makemake', 138, 4601, NULL, true, true, 1, NULL);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Evropa', 0, NULL);
INSERT INTO public.satellite VALUES (2, 'IO', 3, NULL);
INSERT INTO public.satellite VALUES (3, 'Galileo', 4, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 696340, 4603, NULL, false, true, 1, NULL);
INSERT INTO public.star VALUES (2, 'Stephenson', 2158, 7892, NULL, false, true, 1, NULL);
INSERT INTO public.star VALUES (3, 'WOH G64', 1704, 2392, NULL, false, true, 1, NULL);
INSERT INTO public.star VALUES (4, 'UY Shild', 704, 2392, NULL, false, true, 1, NULL);
INSERT INTO public.star VALUES (5, 'Alpha Z', 4704, 2392, NULL, false, true, 1, NULL);
INSERT INTO public.star VALUES (6, 'Castor', 1901, 392, NULL, false, true, 1, NULL);


--
-- Name: satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

