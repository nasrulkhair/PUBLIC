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
-- Name: exist; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.exist (
    year integer NOT NULL,
    still_exist boolean NOT NULL,
    name character varying(40) NOT NULL,
    exist_id integer NOT NULL
);


ALTER TABLE public.exist OWNER TO freecodecamp;

--
-- Name: exist_exist_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.exist_exist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exist_exist_id_seq OWNER TO freecodecamp;

--
-- Name: exist_exist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.exist_exist_id_seq OWNED BY public.exist.exist_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_earth_mil double precision,
    mass double precision,
    diameter double precision
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_earth_mil double precision,
    diameter double precision,
    mass double precision,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_sun_mil double precision,
    mass double precision,
    diameter double precision,
    age integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    diameter double precision,
    mass double precision,
    has_life boolean,
    note text,
    temperature numeric,
    age integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: exist exist_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exist ALTER COLUMN exist_id SET DEFAULT nextval('public.exist_exist_id_seq'::regclass);


--
-- Data for Name: exist; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.exist VALUES (100, true, 'Ancient Civilization A', 1);
INSERT INTO public.exist VALUES (200, false, 'Ancient Civilization B', 2);
INSERT INTO public.exist VALUES (300, true, 'Medieval Kingdom A', 3);
INSERT INTO public.exist VALUES (400, false, 'Medieval Kingdom B', 4);
INSERT INTO public.exist VALUES (500, true, 'Renaissance City', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 1500000000000, 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 1760000000000, 220000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 3000000, 5500000000, 60000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 28000000, 80000000000, 50000);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 53500000, 6500000000000, 120000);
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', 65600000, 810000000, 11000);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool Galaxy', 31500000, 160000000000, 70000);
INSERT INTO public.galaxy VALUES (8, 'Pinwheel Galaxy', 25000000, 100000000000, 65000);
INSERT INTO public.galaxy VALUES (9, 'Bode''s Galaxy', 11700000, 25000000000, 22000);
INSERT INTO public.galaxy VALUES (10, 'Sculptor Galaxy', 11000000, 120000000000, 20000);
INSERT INTO public.galaxy VALUES (11, 'Centaurus A', 12000000, 100000000000, 30000);
INSERT INTO public.galaxy VALUES (12, 'NGC 1300', 61000000, 150000000000, 110000);
INSERT INTO public.galaxy VALUES (13, 'NGC 5128', 13000000, 30000000000, 80000);
INSERT INTO public.galaxy VALUES (14, 'Whale Galaxy', 30000000, 120000000000, 75000);
INSERT INTO public.galaxy VALUES (15, 'Sunflower Galaxy', 76000000, 700000000000, 100000);
INSERT INTO public.galaxy VALUES (16, 'Leo I', 82000000, 5000000000, 6000);
INSERT INTO public.galaxy VALUES (17, 'Leo II', 84000000, 8000000000, 8000);
INSERT INTO public.galaxy VALUES (18, 'Leo III', 86000000, 10000000000, 9000);
INSERT INTO public.galaxy VALUES (19, 'Andromeda II', 2300000, 2500000000, 15000);
INSERT INTO public.galaxy VALUES (20, 'Maffei 1', 11000000, 10000000000, 13000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 238900, 3476, 7.35e+22, false, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 485, 3121.6, 4.8e+22, false, 2);
INSERT INTO public.moon VALUES (3, 'Titan', 759.2, 5150, 1.35e+23, false, 3);
INSERT INTO public.moon VALUES (4, 'Ganymede', 390.4, 5268.2, 1.4799999999999999e+23, false, 4);
INSERT INTO public.moon VALUES (5, 'Callisto', 449.8, 4800, 1.0800000000000001e+23, false, 5);
INSERT INTO public.moon VALUES (6, 'Io', 421.7, 3642, 8.93e+22, false, 2);
INSERT INTO public.moon VALUES (7, 'Enceladus', 147.9, 504.2, 1.08e+20, false, 3);
INSERT INTO public.moon VALUES (8, 'Triton', 210.4, 2706.8, 2.1400000000000002e+22, false, 6);
INSERT INTO public.moon VALUES (9, 'Europa', 485, 3121.6, 4.8e+22, false, 2);
INSERT INTO public.moon VALUES (10, 'Phobos', 234.2, 22.4, 1.08e+16, false, 2);
INSERT INTO public.moon VALUES (11, 'Deimos', 234.2, 12.4, 2.4e+15, false, 2);
INSERT INTO public.moon VALUES (12, 'Miranda', 130.1, 235.8, 6.59e+19, false, 3);
INSERT INTO public.moon VALUES (13, 'Ariel', 118.9, 1157.8, 1.35e+21, false, 4);
INSERT INTO public.moon VALUES (14, 'Umbriel', 119.4, 1169.4, 1.27e+21, false, 4);
INSERT INTO public.moon VALUES (15, 'Titania', 119.4, 1577.8, 3.53e+21, false, 4);
INSERT INTO public.moon VALUES (16, 'Oberon', 119.4, 1522.8, 3.01e+21, false, 4);
INSERT INTO public.moon VALUES (17, 'Rhea', 949.1, 1527.6, 2.31e+21, false, 3);
INSERT INTO public.moon VALUES (18, 'Dione', 738.6, 1122.8, 1.1e+21, false, 3);
INSERT INTO public.moon VALUES (19, 'Iapetus', 3560.8, 1468.6, 1.81e+21, false, 3);
INSERT INTO public.moon VALUES (20, 'Charon', 793.8, 1212, 1.586e+21, false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 93, 5.972e+24, 12756, 4500, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 141.6, 6.39e+23, 6779, 4500, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 483.8, 1.898e+27, 139820, 4500, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 890.8, 5.683e+26, 116460, 4500, 1);
INSERT INTO public.planet VALUES (5, 'Neptune', 2795, 1.0239999999999999e+26, 49528, 4500, 2);
INSERT INTO public.planet VALUES (6, 'Venus', 67.2, 4.867e+24, 12104, 4500, 1);
INSERT INTO public.planet VALUES (7, 'Mercury', 36, 3.285e+23, 4879, 4500, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 1784, 8.681e+25, 50724, 4500, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 3660, 1.309e+22, 2376, 4500, 3);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 500, 1.4424e+25, 18620, 4500, 4);
INSERT INTO public.planet VALUES (11, 'HD 219134 b', 21.24, 4.36e+24, 12447, 4500, 5);
INSERT INTO public.planet VALUES (12, 'Gliese 667 Cc', 23.62, 4.52e+24, 14631, 4500, 6);
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1e', 0.028, 3.3e+24, 9257, 4500, 7);
INSERT INTO public.planet VALUES (14, 'Kepler-452b', 1400, 5.42e+24, 20852, 4500, 5);
INSERT INTO public.planet VALUES (15, 'HD 40307 g', 121.45, 8.2e+24, 12000, 4500, 6);
INSERT INTO public.planet VALUES (16, 'K2-18b', 111.84, 8.63e+24, 13000, 4500, 7);
INSERT INTO public.planet VALUES (17, 'Wolf 1061c', 14.15, 3.4e+24, 12231, 4500, 8);
INSERT INTO public.planet VALUES (18, 'Gliese 581g', 20.4, 3.1e+24, 14800, 4500, 9);
INSERT INTO public.planet VALUES (19, 'LHS 1140b', 39.47, 6.6e+24, 16860, 4500, 10);
INSERT INTO public.planet VALUES (20, 'Kepler-22b', 600, 6.399999999999999e+24, 29000, 4500, 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1392000, 1.989e+30, false, 'Main sequence star', 5778, 4600, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 1711000, 2.063e+30, false, 'Brightest star in the night sky', 9940, 237, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 244000, 2.447e+29, true, 'Closest known star to the Sun', 3042, 5617, 2);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 1440000, 2.188e+30, false, 'Binary star system with Alpha Centauri B', 5790, 6000, 2);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 1180000000, 1.2e+31, false, 'Red supergiant', 3500, 9, 3);
INSERT INTO public.star VALUES (6, 'Alpha Centauri B', 1190000, 2.188e+30, false, 'Binary star system with Alpha Centauri A', 5260, 6000, 2);
INSERT INTO public.star VALUES (7, 'Procyon', 370000, 1.972e+30, false, 'Binary star system with Procyon B', 6550, 1000, 1);
INSERT INTO public.star VALUES (8, 'Rigel', 118000000, 2.4e+31, false, 'Blue supergiant in Orion', 12100, 800, 3);
INSERT INTO public.star VALUES (9, 'VY Canis Majoris', 2600000000, 3.3e+31, false, 'One of the largest known stars', 3500, 800, 4);
INSERT INTO public.star VALUES (10, 'Antares', 883000000, 1.3e+31, false, 'Red supergiant in Scorpius', 3600, 12000, 5);
INSERT INTO public.star VALUES (11, 'Polaris', 90000, 5.4e+29, false, 'North Star in Ursa Minor', 6000, 7000, 1);
INSERT INTO public.star VALUES (12, 'Deneb', 200000000, 1.5e+31, false, 'Supergiant star in Cygnus', 8500, 8000, 6);
INSERT INTO public.star VALUES (13, 'Tau Ceti', 540000, 7.9e+28, true, 'Sun-like star with planets', 5340, 6000, 7);
INSERT INTO public.star VALUES (14, 'Aldebaran', 445000000, 1.7e+31, false, 'Giant star in Taurus', 3910, 6250, 3);
INSERT INTO public.star VALUES (15, 'Bellatrix', 30000000, 6.6e+30, false, 'Blue giant in Orion', 22000, 25000, 3);
INSERT INTO public.star VALUES (16, 'Sirius B', 10000, 2.02e+29, false, 'White dwarf companion of Sirius A', 25000, 12000, 1);
INSERT INTO public.star VALUES (17, 'Castor', 61000000, 2.3e+30, false, 'Binary star system in Gemini', 9600, 2000, 1);
INSERT INTO public.star VALUES (18, 'Altair', 18000000, 1.8e+30, false, 'Bright star in Aquila', 7550, 10750, 8);
INSERT INTO public.star VALUES (19, 'Arcturus', 256000000, 1.8e+31, false, 'Red giant in Boötes', 4300, 7000, 1);
INSERT INTO public.star VALUES (20, 'Vega', 24400000, 2.1e+30, false, 'Bright star in Lyra', 9600, 4550, 9);


--
-- Name: exist_exist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.exist_exist_id_seq', 5, true);


--
-- Name: exist exist_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exist
    ADD CONSTRAINT exist_pkey PRIMARY KEY (exist_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: exist unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exist
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

