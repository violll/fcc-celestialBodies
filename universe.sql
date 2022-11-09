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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area numeric(7,3)
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    constellation_id integer,
    name_meaning text,
    type character varying(50)
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
    name character varying(50) NOT NULL,
    planet_id integer,
    diameter integer,
    period numeric(5,2)
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer,
    planet_type text,
    has_rings boolean
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer,
    constellation_id integer,
    is_visible boolean
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Andromeda', 722.278);
INSERT INTO public.constellation VALUES (3, 'Cygnus', 803.983);
INSERT INTO public.constellation VALUES (4, 'Dorado', 179.173);
INSERT INTO public.constellation VALUES (5, 'Pegasus', 1120.794);
INSERT INTO public.constellation VALUES (6, 'Hercules', 1225.148);
INSERT INTO public.constellation VALUES (7, 'Centaurus', 1060.422);
INSERT INTO public.constellation VALUES (8, 'Auriga', 657.438);
INSERT INTO public.constellation VALUES (9, 'Aries', 441.395);
INSERT INTO public.constellation VALUES (10, 'Orion', 594.120);
INSERT INTO public.constellation VALUES (2, 'Canes Venatici', 465.194);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, 'Our own galaxy. It is said to look like a band of light', 'spiral');
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1, 'In mythology, Andromeda is the daughter of the kings of Ethiopia and is said to be more beautify than the Nereids. She becomes queen of Greece when she marries Perseus', 'spiral');
INSERT INTO public.galaxy VALUES (4, 'Fireworks', 3, 'It is extremely bright and has lots of colors', 'starburst spiral');
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 4, 'Named after Ferdinand Magellan', 'dwarf irregular');
INSERT INTO public.galaxy VALUES (6, 'Little Sombrero', 5, 'It looks like a sombrero, but is smaller than the Sombrero Galaxy', 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Eye of Sauron', 2, 'Looks like the eye of Sauron, from Lord of the Rings.', 'spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 3476, 27.32);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 23, 0.32);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 13, 1.26);
INSERT INTO public.moon VALUES (4, 'Io', 5, 3630, 1.77);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 3138, 3.55);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 5262, 7.16);
INSERT INTO public.moon VALUES (7, 'Thebe', 5, 90, 0.50);
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, 200, 0.50);
INSERT INTO public.moon VALUES (9, 'Callisto', 5, 4800, 16.69);
INSERT INTO public.moon VALUES (10, 'Himalia', 5, 170, 251.00);
INSERT INTO public.moon VALUES (11, 'Pan', 6, 20, 0.58);
INSERT INTO public.moon VALUES (12, 'Atlas', 6, 40, 0.60);
INSERT INTO public.moon VALUES (13, 'Prometheus', 6, 80, 0.61);
INSERT INTO public.moon VALUES (14, 'Pandora', 6, 100, 0.63);
INSERT INTO public.moon VALUES (15, 'Janus', 6, 190, 0.69);
INSERT INTO public.moon VALUES (16, 'Epimetheus', 6, 120, 0.69);
INSERT INTO public.moon VALUES (17, 'Mimas', 6, 394, 0.94);
INSERT INTO public.moon VALUES (18, 'Puck', 7, 170, 0.76);
INSERT INTO public.moon VALUES (19, 'Miranda', 7, 485, 1.41);
INSERT INTO public.moon VALUES (20, 'Ariel', 7, 1160, 2.52);
INSERT INTO public.moon VALUES (21, 'Galatea', 8, 150, 0.40);
INSERT INTO public.moon VALUES (22, 'Larissa', 8, 400, 1.12);
INSERT INTO public.moon VALUES (23, 'Triton', 8, 2720, 5.88);
INSERT INTO public.moon VALUES (24, 'Nereid', 8, 340, 360.00);
INSERT INTO public.moon VALUES (25, 'Charon', 11, 1200, 6.39);
INSERT INTO public.moon VALUES (26, 'Styx', 11, 20, 20.00);
INSERT INTO public.moon VALUES (27, 'Nix', 11, 46, 24.00);
INSERT INTO public.moon VALUES (28, 'Kerberos', 11, 28, 24.00);
INSERT INTO public.moon VALUES (29, 'Hydra', 11, 61, 38.00);
INSERT INTO public.moon VALUES (31, 'Nakama', 12, 200, 35.00);
INSERT INTO public.moon VALUES (30, 'Dysnomea', NULL, 684, 16.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'terrestrial', false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'terrestrial', false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'terrestrial', false);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'terrestrial', false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'gas giant', true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'gas giant', true);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'ice giant', true);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'ice giant', true);
INSERT INTO public.planet VALUES (9, 'Ceres', 1, 'dwarf', false);
INSERT INTO public.planet VALUES (10, 'Orcus', 1, 'dwarf', NULL);
INSERT INTO public.planet VALUES (11, 'Pluto', 1, 'dwarf', false);
INSERT INTO public.planet VALUES (12, 'Haumea', 1, 'dwarf', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, 'Homam', 2, 5, true);
INSERT INTO public.star VALUES (1, 'Sun', 2, 6, true);
INSERT INTO public.star VALUES (2, 'Hadar', 2, 7, true);
INSERT INTO public.star VALUES (3, 'Hadeus', 2, 8, true);
INSERT INTO public.star VALUES (4, 'Hamal', 2, 9, true);
INSERT INTO public.star VALUES (5, 'Hatysa', 2, 10, true);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 31, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: galaxy galaxy_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

