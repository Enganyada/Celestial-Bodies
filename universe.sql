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
-- Name: bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.bodies (
    bodies_id integer NOT NULL,
    name character varying NOT NULL,
    planet character varying,
    galaxy character varying,
    moon character varying,
    star character varying
);


ALTER TABLE public.bodies OWNER TO freecodecamp;

--
-- Name: bodies_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.bodies_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bodies_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: bodies_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.bodies_bodies_id_seq OWNED BY public.bodies.bodies_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    constellation text NOT NULL,
    shape text NOT NULL,
    named_after_person boolean NOT NULL
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
    name character varying NOT NULL,
    regular_irregular text,
    mean_radius integer,
    planet character varying,
    planet_id integer
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
    name character varying NOT NULL,
    number_of_moons integer,
    has_rings boolean NOT NULL,
    density numeric(4,3),
    star character varying,
    star_id integer
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
    name character varying NOT NULL,
    magnitude integer,
    galaxy character varying,
    light_years_away numeric(4,2),
    class character varying,
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
-- Name: bodies bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bodies ALTER COLUMN bodies_id SET DEFAULT nextval('public.bodies_bodies_id_seq'::regclass);


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
-- Data for Name: bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.bodies VALUES (1, 'Earth', 'Earth', 'Milky Way', 'Moon', 'Sun');
INSERT INTO public.bodies VALUES (2, 'Jupiter', 'Jupiter', 'Milky Way', 'Ganymede', NULL);
INSERT INTO public.bodies VALUES (3, 'Saturn', 'Saturn', 'Milky Way', 'Titan', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Sagittarius', 'spiral', true);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Andromeda', 'spiral', false);
INSERT INTO public.galaxy VALUES (4, 'Sculptor', 'Sculptor', 'spiral', false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'Triangulum', 'spiral', false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Canes Venatici', 'spiral', false);
INSERT INTO public.galaxy VALUES (7, 'Cigar', 'Ursa Major', 'starburst', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'regular', 1737, 'Earth', 3);
INSERT INTO public.moon VALUES (8, 'Ganymede', 'regular', 2634, 'Jupiter', 5);
INSERT INTO public.moon VALUES (10, 'Callisto', 'regular', 2410, 'Jupiter', 5);
INSERT INTO public.moon VALUES (11, 'Io', 'regular', 1822, 'Jupiter', 5);
INSERT INTO public.moon VALUES (12, 'Europa', 'regular', 1561, 'Jupiter', 5);
INSERT INTO public.moon VALUES (9, 'Titan', 'regular', 2675, 'Saturn', 6);
INSERT INTO public.moon VALUES (15, 'Rhea', 'regular', 764, 'Saturn', 6);
INSERT INTO public.moon VALUES (17, 'Iapetus', 'irregular', 736, 'Saturn', 6);
INSERT INTO public.moon VALUES (20, 'Dione', 'regular', 561, 'Saturn', 6);
INSERT INTO public.moon VALUES (14, 'Titania', 'regular', 789, 'Uranus', 7);
INSERT INTO public.moon VALUES (16, 'Oberon', 'irregular', 761, 'Uranus', 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', 'irregular', 585, 'Uranus', 7);
INSERT INTO public.moon VALUES (19, 'Ariel', 'irregular', 579, 'Uranus', 7);
INSERT INTO public.moon VALUES (2, 'Phobos', 'irregular', 11, 'Mars', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'irregular', 6, 'Mars', 4);
INSERT INTO public.moon VALUES (13, 'Triton', 'irregular', 1353, 'Neptune', 8);
INSERT INTO public.moon VALUES (6, 'Hilakea', 'irregular', 195, 'Haumea', 12);
INSERT INTO public.moon VALUES (7, 'Namaka', 'irregular', 100, 'Haumea', 12);
INSERT INTO public.moon VALUES (5, 'Dysnomia', 'irregular', 350, 'Eris', 11);
INSERT INTO public.moon VALUES (4, 'Charon', 'regular', 303, 'Pluto', 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, false, 5.430, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 0, false, 5.240, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 2, false, 3.940, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 82, true, 1.330, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 83, true, 0.700, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, true, 1.300, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, true, 1.700, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 5, false, 1.854, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Ceres', 0, false, 2.162, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Eris', 1, false, 2.430, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Haumea', 2, false, 2.018, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, false, 5.520, 'Sun', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Andromeda', 3, 'Andromeda', 2.50, NULL, 3);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 4, 'Milky Way', 4.37, 'G2V', 2);
INSERT INTO public.star VALUES (4, 'Sirius', 1, 'Milky Way', 8.60, 'A1V', 2);
INSERT INTO public.star VALUES (5, 'Altair', 2, 'Milky Way', 16.70, 'A7IV', 2);
INSERT INTO public.star VALUES (6, 'Vega', 1, 'Milky Way', 25.00, 'ADVa', 2);
INSERT INTO public.star VALUES (2, 'Sun', 5, 'Milky Way', 27.14, 'G2V', 2);


--
-- Name: bodies_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.bodies_bodies_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: bodies bodies_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bodies
    ADD CONSTRAINT bodies_name_key UNIQUE (name);


--
-- Name: bodies bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bodies
    ADD CONSTRAINT bodies_pkey PRIMARY KEY (bodies_id);


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

