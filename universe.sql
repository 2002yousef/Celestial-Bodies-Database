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
    name character varying(30) NOT NULL,
    age integer,
    distance_from_earth integer,
    description text NOT NULL,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    mass numeric(4,1),
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milk', 10, 10, 'way', true);
INSERT INTO public.galaxy VALUES (2, 'milk2', 11, 11, 'way1', true);
INSERT INTO public.galaxy VALUES (3, 'milk3', 12, 12, 'way2', true);
INSERT INTO public.galaxy VALUES (4, 'milk4', 13, 13, 'way3', true);
INSERT INTO public.galaxy VALUES (5, 'milk5', 14, 14, 'way4', true);
INSERT INTO public.galaxy VALUES (6, 'milk6', 15, 15, 'way5', true);
INSERT INTO public.galaxy VALUES (7, 'milk7', 16, 16, 'way6', true);
INSERT INTO public.galaxy VALUES (8, 'milk8', 17, 17, 'way7', true);
INSERT INTO public.galaxy VALUES (9, 'milk9', 18, 18, 'way8', true);
INSERT INTO public.galaxy VALUES (10, 'milk10', 19, 19, 'way9', true);
INSERT INTO public.galaxy VALUES (11, 'milk11', 20, 20, 'way10', true);
INSERT INTO public.galaxy VALUES (12, 'milk12', 21, 21, 'way11', true);
INSERT INTO public.galaxy VALUES (13, 'milk13', 22, 22, 'way12', true);
INSERT INTO public.galaxy VALUES (14, 'milk14', 23, 23, 'way13', true);
INSERT INTO public.galaxy VALUES (15, 'milk15', 24, 24, 'way14', true);
INSERT INTO public.galaxy VALUES (16, 'milk16', 25, 25, 'way15', true);
INSERT INTO public.galaxy VALUES (17, 'milk17', 26, 26, 'way16', true);
INSERT INTO public.galaxy VALUES (18, 'milk18', 27, 27, 'way17', true);
INSERT INTO public.galaxy VALUES (19, 'milk19', 28, 28, 'way18', true);
INSERT INTO public.galaxy VALUES (20, 'milk20', 29, 29, 'way19', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 10, 10, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 11, 11, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 12, 12, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 14, 14, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 15, 15, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 16, 16, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 17, 17, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 18, 18, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 19, 19, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 20, 20, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 21, 21, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 22, 22, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 23, 23, 13);
INSERT INTO public.moon VALUES (14, 'moon14', 24, 24, 14);
INSERT INTO public.moon VALUES (15, 'moon15', 25, 25, 15);
INSERT INTO public.moon VALUES (16, 'moon16', 26, 26, 16);
INSERT INTO public.moon VALUES (17, 'moon17', 27, 27, 17);
INSERT INTO public.moon VALUES (18, 'moon18', 28, 28, 18);
INSERT INTO public.moon VALUES (19, 'moon19', 29, 29, 19);
INSERT INTO public.moon VALUES (20, 'moon20', 30, 30, 20);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'info1', 1);
INSERT INTO public.more_info VALUES (2, 'info2', 2);
INSERT INTO public.more_info VALUES (3, 'info3', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 1, 1, 1.0, true, 1);
INSERT INTO public.planet VALUES (2, 'venus', 2, 2, 2.0, true, 2);
INSERT INTO public.planet VALUES (3, 'earth', 3, 3, 3.0, true, 3);
INSERT INTO public.planet VALUES (4, 'mars', 4, 4, 4.0, true, 4);
INSERT INTO public.planet VALUES (5, 'jupiter', 5, 5, 5.0, true, 5);
INSERT INTO public.planet VALUES (6, 'saturn', 6, 6, 6.0, true, 6);
INSERT INTO public.planet VALUES (7, 'planet7', 7, 7, 7.0, true, 7);
INSERT INTO public.planet VALUES (8, 'planet8', 8, 8, 8.0, true, 8);
INSERT INTO public.planet VALUES (9, 'planet9', 9, 9, 9.0, true, 9);
INSERT INTO public.planet VALUES (10, 'planet10', 10, 10, 10.0, true, 10);
INSERT INTO public.planet VALUES (11, 'planet11', 11, 11, 11.0, true, 11);
INSERT INTO public.planet VALUES (12, 'planet12', 12, 12, 12.0, true, 12);
INSERT INTO public.planet VALUES (13, 'planet13', 13, 13, 13.0, true, 13);
INSERT INTO public.planet VALUES (14, 'planet14', 14, 14, 14.0, true, 14);
INSERT INTO public.planet VALUES (15, 'planet15', 15, 15, 15.0, true, 15);
INSERT INTO public.planet VALUES (16, 'planet16', 16, 16, 16.0, true, 16);
INSERT INTO public.planet VALUES (17, 'planet17', 17, 17, 17.0, true, 17);
INSERT INTO public.planet VALUES (18, 'planet18', 18, 18, 18.0, true, 18);
INSERT INTO public.planet VALUES (19, 'planet19', 19, 19, 19.0, true, 19);
INSERT INTO public.planet VALUES (20, 'planet20', 20, 20, 20.0, true, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 10, 10, 1);
INSERT INTO public.star VALUES (2, 'sun2', 11, 11, 2);
INSERT INTO public.star VALUES (3, 'sun3', 12, 12, 3);
INSERT INTO public.star VALUES (4, 'sun4', 13, 13, 4);
INSERT INTO public.star VALUES (5, 'sun5', 14, 14, 5);
INSERT INTO public.star VALUES (6, 'sun6', 15, 15, 6);
INSERT INTO public.star VALUES (7, 'sun7', 16, 16, 7);
INSERT INTO public.star VALUES (8, 'sun8', 17, 17, 8);
INSERT INTO public.star VALUES (9, 'sun9', 18, 18, 9);
INSERT INTO public.star VALUES (10, 'sun10', 19, 19, 10);
INSERT INTO public.star VALUES (11, 'sun11', 20, 20, 11);
INSERT INTO public.star VALUES (12, 'sun12', 21, 21, 12);
INSERT INTO public.star VALUES (13, 'sun13', 22, 22, 13);
INSERT INTO public.star VALUES (14, 'sun14', 23, 23, 14);
INSERT INTO public.star VALUES (15, 'sun15', 24, 24, 15);
INSERT INTO public.star VALUES (16, 'sun16', 25, 25, 16);
INSERT INTO public.star VALUES (17, 'sun17', 26, 26, 17);
INSERT INTO public.star VALUES (18, 'sun18', 27, 27, 18);
INSERT INTO public.star VALUES (19, 'sun19', 28, 28, 19);
INSERT INTO public.star VALUES (20, 'sun20', 29, 29, 20);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 3, true);


--
-- Name: more_info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_info_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 9, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_key UNIQUE (age);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: more_info more_info_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_key UNIQUE (age);


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

