--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30),
    age_in_millions_year integer,
    galaxy_type text,
    distanc_from_earth_in_light_years numeric(5,2) NOT NULL
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
-- Name: mineral; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mineral (
    mineral_id integer NOT NULL,
    weight_of_diamond_in_ton integer,
    moon_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.mineral OWNER TO freecodecamp;

--
-- Name: mineral_mineral_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mineral_mineral_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mineral_mineral_id_seq OWNER TO freecodecamp;

--
-- Name: mineral_mineral_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mineral_mineral_id_seq OWNED BY public.mineral.mineral_id;


--
-- Name: mineral_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mineral_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mineral_moon_id_seq OWNER TO freecodecamp;

--
-- Name: mineral_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mineral_moon_id_seq OWNED BY public.mineral.moon_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    age_in_millions_year numeric(6,1),
    has_life boolean,
    description text,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_id integer NOT NULL,
    planet_types text,
    has_life boolean,
    distance_from_earth integer,
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
    name character varying(30),
    star_id integer NOT NULL,
    age_in_millions_year numeric(6,1),
    is_spherical boolean,
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: mineral mineral_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mineral ALTER COLUMN mineral_id SET DEFAULT nextval('public.mineral_mineral_id_seq'::regclass);


--
-- Name: mineral moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mineral ALTER COLUMN moon_id SET DEFAULT nextval('public.mineral_moon_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


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
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 'Spiral', 2.54);
INSERT INTO public.galaxy VALUES (3, 'Trangulam', 10000, 'Spiral', 2.73);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 10000, 'Spiral', 23.00);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 13000, 'Spiral', 29.30);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 13000, 'Irregular', 0.16);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13510, 'Barred Spiral', 0.00);


--
-- Data for Name: mineral; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mineral VALUES (1, 1000, 3, NULL);
INSERT INTO public.mineral VALUES (2, 2000, 4, NULL);
INSERT INTO public.mineral VALUES (3, 3000, 5, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('AV1b', 1, 2000.0, false, 'Rocky, cratered, gray, small, icy', 7);
INSERT INTO public.moon VALUES ('AV1b-II', 2, 1500.0, false, 'Volcanic, hot, red, active, rugged', 8);
INSERT INTO public.moon VALUES ('AV1c-I', 3, 4000.0, false, 'Rocky, cratered, gray, small, icy', 7);
INSERT INTO public.moon VALUES ('AV1c-II', 4, 1500.0, false, 'Icy, bright, cold, white, smooth', 8);
INSERT INTO public.moon VALUES ('MV19b-I', 5, 2000.0, false, 'Rocky, cratered, gray, cold, small', 5);
INSERT INTO public.moon VALUES ('MV19b-II', 6, 1500.0, false, 'Icy, smooth, cold, white, bright', 5);
INSERT INTO public.moon VALUES ('MV19c-I', 7, 800.0, false, 'Rocky, hot, volcanic, active, rugged', 6);
INSERT INTO public.moon VALUES ('MV19c-II', 8, 500.0, false, 'Icy, smooth, cold, white, bright', 6);
INSERT INTO public.moon VALUES ('SN94Ib-I', 9, 400.0, false, 'Rocky, cratered, gray, small, cold', 3);
INSERT INTO public.moon VALUES ('SN94Ib-II', 10, 300.0, false, 'Volcanic, hot, red, active, rugged', 3);
INSERT INTO public.moon VALUES ('SN94Ic-I', 11, 500.0, false, 'Rocky, gray, cratered, small, dusty', 4);
INSERT INTO public.moon VALUES ('SN94Ic-II', 12, 400.0, false, 'Icy, bright, cold, white, smooth', 4);
INSERT INTO public.moon VALUES ('MV104b-I', 13, 3500.0, false, 'Rocky, cratered, gray, small, cold', 9);
INSERT INTO public.moon VALUES ('MV104b-II', 14, 3000.0, false, 'Volcanic, hot, red, active, rugged', 9);
INSERT INTO public.moon VALUES ('MV104c-I', 15, 4500.0, false, 'Rocky, gray, cratered, small, dusty', 10);
INSERT INTO public.moon VALUES ('MV104c-II', 16, 4000.0, false, 'Icy, bright, cold, white, smooth', 10);
INSERT INTO public.moon VALUES ('R136a1b-I', 17, 40.0, false, 'Rocky, cratered, gray, small, cold', 11);
INSERT INTO public.moon VALUES ('R136a1b-II', 18, 30.0, false, 'Volcanic, hot, red, active, rugged', 11);
INSERT INTO public.moon VALUES ('R136a1c-I', 19, 90.0, false, 'Rocky, gray, cratered, small, dusty', 12);
INSERT INTO public.moon VALUES ('R136a1c-II', 20, 80.0, false, 'Icy, bright, cold, white, smooth', 12);
INSERT INTO public.moon VALUES ('Earths moon', 21, 0.0, false, 'Rocky,gray, cratered, small, dusty', 2);
INSERT INTO public.moon VALUES ('Mars lil bro', 22, 80.0, false, 'Icy, bright, cold, white, smooth', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mars', 1, 'terrestial', false, 140, 1);
INSERT INTO public.planet VALUES ('Earth', 2, 'terrestial', true, 0, 1);
INSERT INTO public.planet VALUES ('SN94Ib', 3, 'Gas giant', true, 23, 3);
INSERT INTO public.planet VALUES ('SN94Ic', 4, 'Rocky planet', false, 23, 3);
INSERT INTO public.planet VALUES ('MV19b', 5, 'Ice giant', false, 3, 2);
INSERT INTO public.planet VALUES ('MV19c', 6, 'Rocky planet', false, 3, 2);
INSERT INTO public.planet VALUES ('AV1b', 7, 'Gas Giant', false, 3, 4);
INSERT INTO public.planet VALUES ('AV1c', 8, 'Rocky planet', false, 3, 4);
INSERT INTO public.planet VALUES ('MV104b', 9, 'Gas giant', false, 29, 5);
INSERT INTO public.planet VALUES ('MV104c', 10, 'Rocky planet', false, 29, 5);
INSERT INTO public.planet VALUES ('R136a1b', 11, 'Gas giant', false, 0, 6);
INSERT INTO public.planet VALUES ('R136a1c', 12, 'Rocky Planet', false, 0, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 4600.0, true, 'Hot,yellow,luminate,stable', 1);
INSERT INTO public.star VALUES ('SN 1994I', 3, 0.0, true, 'Explosive,supernova,short-lived,massive', 4);
INSERT INTO public.star VALUES ('M33 Variable Star V19', 2, 10.0, true, 'Blue,bright,variable,massive', 3);
INSERT INTO public.star VALUES ('Star V1', 4, 1.0, true, 'Pulsating,bright,variable, distant, Cepheid', 2);
INSERT INTO public.star VALUES ('M104 Variable Star V1', 5, 100.0, true, 'Pulsating, bright, variable, Cepheid, distant', 5);
INSERT INTO public.star VALUES ('R136a1', 6, 1.0, true, 'Massive, hot, young, bright, blue', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: mineral_mineral_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mineral_mineral_id_seq', 3, true);


--
-- Name: mineral_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mineral_moon_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: mineral mineral_mineral_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mineral
    ADD CONSTRAINT mineral_mineral_id_key UNIQUE (mineral_id);


--
-- Name: mineral mineral_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mineral
    ADD CONSTRAINT mineral_pkey PRIMARY KEY (mineral_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: mineral mineral_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mineral
    ADD CONSTRAINT mineral_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

