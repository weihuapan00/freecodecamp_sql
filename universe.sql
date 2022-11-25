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
    name character varying(30),
    col3 integer NOT NULL,
    col4 integer NOT NULL,
    col5 integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    col4 integer NOT NULL,
    col5 integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    daytime_in_hour integer,
    size integer,
    weight numeric(1,1),
    description text,
    has_life boolean NOT NULL,
    has_water boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    star_id integer NOT NULL,
    galaxy_id integer,
    col4 integer,
    col5 integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: t5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.t5 (
    t5_id integer NOT NULL,
    col2 integer NOT NULL,
    col3 integer NOT NULL,
    name character varying(10)
);


ALTER TABLE public.t5 OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '1', 1, 1, 1);
INSERT INTO public.galaxy VALUES (2, '1', 1, 1, 1);
INSERT INTO public.galaxy VALUES (3, '1', 1, 1, 1);
INSERT INTO public.galaxy VALUES (4, '1', 1, 1, 1);
INSERT INTO public.galaxy VALUES (5, '1', 1, 1, 1);
INSERT INTO public.galaxy VALUES (6, '1', 1, 1, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (2, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (3, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (4, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (5, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (6, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (7, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (8, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (9, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (10, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (11, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (12, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (13, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (14, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (15, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (16, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (17, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (18, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (19, '1', 1, 1, 1);
INSERT INTO public.moon VALUES (20, '1', 1, 1, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '1', 1, 1, 0.0, '1', true, true, 1);
INSERT INTO public.planet VALUES (2, '1', 1, 1, 0.0, '1', true, true, 2);
INSERT INTO public.planet VALUES (3, '1', 1, 1, 0.0, '1', true, true, 3);
INSERT INTO public.planet VALUES (4, '1', 1, 1, 0.0, '1', true, true, 4);
INSERT INTO public.planet VALUES (5, '1', 1, 1, 0.0, '1', true, true, 5);
INSERT INTO public.planet VALUES (6, '1', 1, 1, 0.0, '1', true, true, 6);
INSERT INTO public.planet VALUES (7, '1', 1, 1, 0.0, '1', true, true, 6);
INSERT INTO public.planet VALUES (8, '1', 1, 1, 0.0, '1', true, true, 6);
INSERT INTO public.planet VALUES (9, '1', 1, 1, 0.0, '1', true, true, 6);
INSERT INTO public.planet VALUES (10, '1', 1, 1, 0.0, '1', true, true, 6);
INSERT INTO public.planet VALUES (11, '1', 1, 1, 0.0, '1', true, true, 6);
INSERT INTO public.planet VALUES (12, '1', 1, 1, 0.0, '1', true, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('1', 1, 1, 1, 1);
INSERT INTO public.star VALUES ('1', 2, 2, 1, 1);
INSERT INTO public.star VALUES ('1', 3, 3, 2, 2);
INSERT INTO public.star VALUES ('1', 4, 4, 1, 1);
INSERT INTO public.star VALUES ('1', 5, 5, 1, 1);
INSERT INTO public.star VALUES ('1', 6, 6, 1, 1);


--
-- Data for Name: t5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.t5 VALUES (1, 1, 1, '1');
INSERT INTO public.t5 VALUES (2, 1, 1, '1');
INSERT INTO public.t5 VALUES (3, 1, 1, '1');


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
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: galaxy order_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT order_unique UNIQUE (galaxy_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: t5 t5_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.t5
    ADD CONSTRAINT t5_pkey PRIMARY KEY (t5_id);


--
-- Name: t5 t5_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.t5
    ADD CONSTRAINT t5_unique UNIQUE (t5_id, col2);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

