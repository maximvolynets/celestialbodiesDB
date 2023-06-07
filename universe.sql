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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(30),
    type_of_object character varying(30) NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherial boolean NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    galaxy_type text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherial boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherial boolean NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    is_spherial boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'moon', 'star');
INSERT INTO public.description VALUES (2, 'planet', 'object');
INSERT INTO public.description VALUES (3, 'Venus', 'planet');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milky_way', 1, false, true, 1000, 'SBbc');
INSERT INTO public.galaxy VALUES ('k_big_dog', 2, false, true, 2000, 'Irr');
INSERT INTO public.galaxy VALUES ('big_magelan_cloud', 3, true, false, 1230, 'dSPe');
INSERT INTO public.galaxy VALUES ('carlik_dragon', 4, false, true, 1000, 'SBbc');
INSERT INTO public.galaxy VALUES ('big_fuut', 5, false, true, 2000, 'Irr');
INSERT INTO public.galaxy VALUES ('materik', 6, true, false, 1230, 'dSPe');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('dfsdf', 1, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 2, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 3, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 4, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 5, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 6, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 7, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 8, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 9, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 10, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 11, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 12, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 13, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 14, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 15, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 16, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 17, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 18, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 19, true, true, 2345235);
INSERT INTO public.moon VALUES ('dfsdf', 20, true, true, 2345235);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earh', 1, true, true, 2101230, NULL);
INSERT INTO public.planet VALUES ('Mars', 2, false, true, 223430, NULL);
INSERT INTO public.planet VALUES ('Jupiter', 3, false, true, 11323420, NULL);
INSERT INTO public.planet VALUES ('Saturn', 4, false, false, 769670, NULL);
INSERT INTO public.planet VALUES ('Venera', 5, false, false, 10000, NULL);
INSERT INTO public.planet VALUES ('Mercuri', 6, false, false, 12344230, NULL);
INSERT INTO public.planet VALUES ('Mercuri1', 7, false, false, 12344230, NULL);
INSERT INTO public.planet VALUES ('Vinus', 8, false, false, 12344230, NULL);
INSERT INTO public.planet VALUES ('Kapul', 9, false, false, 12344230, NULL);
INSERT INTO public.planet VALUES ('Droo', 10, false, false, 14230, NULL);
INSERT INTO public.planet VALUES ('Sangria', 11, false, true, 704536, NULL);
INSERT INTO public.planet VALUES ('Furia', 12, false, true, 1231704536, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', false, false, 100000, 1);
INSERT INTO public.star VALUES ('LITTLE-BEAR', false, false, 365700, 2);
INSERT INTO public.star VALUES ('amdromeda', false, true, 46727, 3);
INSERT INTO public.star VALUES ('aKORA', false, true, 46727, 4);
INSERT INTO public.star VALUES ('YOSHIA', false, true, 46727, 5);
INSERT INTO public.star VALUES ('BIG-BEAR', false, false, 3254000, 6);


--
-- Name: description description_description_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_description_id_key UNIQUE (description_id);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


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
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

