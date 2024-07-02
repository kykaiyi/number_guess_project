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

DROP DATABASE user_guess_database;
--
-- Name: user_guess_database; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE user_guess_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE user_guess_database OWNER TO freecodecamp;

\connect user_guess_database

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
-- Name: user_game_raw; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_game_raw (
    id integer NOT NULL,
    name character varying(22),
    guess_count integer
);


ALTER TABLE public.user_game_raw OWNER TO freecodecamp;

--
-- Name: user_game_raw_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_game_raw_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_game_raw_id_seq OWNER TO freecodecamp;

--
-- Name: user_game_raw_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_game_raw_id_seq OWNED BY public.user_game_raw.id;


--
-- Name: user_master; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_master (
    id integer NOT NULL,
    name character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.user_master OWNER TO freecodecamp;

--
-- Name: user_master_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_master_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_master_id_seq OWNER TO freecodecamp;

--
-- Name: user_master_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_master_id_seq OWNED BY public.user_master.id;


--
-- Name: user_game_raw id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_game_raw ALTER COLUMN id SET DEFAULT nextval('public.user_game_raw_id_seq'::regclass);


--
-- Name: user_master id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_master ALTER COLUMN id SET DEFAULT nextval('public.user_master_id_seq'::regclass);


--
-- Data for Name: user_game_raw; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_game_raw VALUES (1, 'ky', 4);
INSERT INTO public.user_game_raw VALUES (2, 'user_1719927264490', 736);
INSERT INTO public.user_game_raw VALUES (3, 'user_1719927264489', 447);
INSERT INTO public.user_game_raw VALUES (4, 'ky', 1);
INSERT INTO public.user_game_raw VALUES (5, 'user_1719927370123', 504);
INSERT INTO public.user_game_raw VALUES (6, 'user_1719927370123', 686);
INSERT INTO public.user_game_raw VALUES (7, 'user_1719927370122', 442);
INSERT INTO public.user_game_raw VALUES (8, 'user_1719927370122', 105);
INSERT INTO public.user_game_raw VALUES (9, 'user_1719927370123', 537);
INSERT INTO public.user_game_raw VALUES (10, 'user_1719927370123', 1);
INSERT INTO public.user_game_raw VALUES (11, 'user_1719927370123', 828);
INSERT INTO public.user_game_raw VALUES (12, 'k', 2);
INSERT INTO public.user_game_raw VALUES (13, 'user_1719927709724', 677);
INSERT INTO public.user_game_raw VALUES (14, 'user_1719927709724', 70);
INSERT INTO public.user_game_raw VALUES (15, 'user_1719927709723', 651);
INSERT INTO public.user_game_raw VALUES (16, 'user_1719927709723', 766);
INSERT INTO public.user_game_raw VALUES (17, 'user_1719927709724', 512);
INSERT INTO public.user_game_raw VALUES (18, 'user_1719927709724', 961);
INSERT INTO public.user_game_raw VALUES (19, 'user_1719927709724', 844);
INSERT INTO public.user_game_raw VALUES (20, 'user_1719927757382', 734);
INSERT INTO public.user_game_raw VALUES (21, 'user_1719927757382', 873);
INSERT INTO public.user_game_raw VALUES (22, 'user_1719927757381', 516);
INSERT INTO public.user_game_raw VALUES (23, 'user_1719927757381', 555);
INSERT INTO public.user_game_raw VALUES (24, 'user_1719927757382', 952);
INSERT INTO public.user_game_raw VALUES (25, 'user_1719927757382', 345);
INSERT INTO public.user_game_raw VALUES (26, 'user_1719927757382', 361);
INSERT INTO public.user_game_raw VALUES (27, 'user_1719927961874', 895);
INSERT INTO public.user_game_raw VALUES (28, 'user_1719927961874', 509);
INSERT INTO public.user_game_raw VALUES (29, 'user_1719927961873', 293);
INSERT INTO public.user_game_raw VALUES (30, 'user_1719927961873', 619);
INSERT INTO public.user_game_raw VALUES (31, 'user_1719927961874', 916);
INSERT INTO public.user_game_raw VALUES (32, 'user_1719927961874', 677);
INSERT INTO public.user_game_raw VALUES (33, 'user_1719927961874', 688);
INSERT INTO public.user_game_raw VALUES (34, 'user_1719927989934', 490);
INSERT INTO public.user_game_raw VALUES (35, 'user_1719927989934', 852);
INSERT INTO public.user_game_raw VALUES (36, 'user_1719927989933', 474);
INSERT INTO public.user_game_raw VALUES (37, 'user_1719927989933', 727);
INSERT INTO public.user_game_raw VALUES (38, 'user_1719927989934', 533);
INSERT INTO public.user_game_raw VALUES (39, 'user_1719927989934', 326);
INSERT INTO public.user_game_raw VALUES (40, 'user_1719927989934', 466);
INSERT INTO public.user_game_raw VALUES (41, 'user_1719928035952', 983);
INSERT INTO public.user_game_raw VALUES (42, 'user_1719928035952', 160);
INSERT INTO public.user_game_raw VALUES (43, 'user_1719928035951', 496);
INSERT INTO public.user_game_raw VALUES (44, 'user_1719928035951', 150);
INSERT INTO public.user_game_raw VALUES (45, 'user_1719928035952', 445);
INSERT INTO public.user_game_raw VALUES (46, 'user_1719928035952', 857);
INSERT INTO public.user_game_raw VALUES (47, 'user_1719928035952', 713);
INSERT INTO public.user_game_raw VALUES (48, 'user_1719928081766', 720);
INSERT INTO public.user_game_raw VALUES (49, 'user_1719928081766', 173);
INSERT INTO public.user_game_raw VALUES (50, 'user_1719928081765', 950);
INSERT INTO public.user_game_raw VALUES (51, 'user_1719928081765', 106);
INSERT INTO public.user_game_raw VALUES (52, 'user_1719928081766', 761);
INSERT INTO public.user_game_raw VALUES (53, 'user_1719928081766', 839);
INSERT INTO public.user_game_raw VALUES (54, 'user_1719928081766', 527);
INSERT INTO public.user_game_raw VALUES (55, 'user_1719928296060', 792);
INSERT INTO public.user_game_raw VALUES (56, 'user_1719928296060', 310);
INSERT INTO public.user_game_raw VALUES (57, 'user_1719928296059', 84);
INSERT INTO public.user_game_raw VALUES (58, 'user_1719928296059', 305);
INSERT INTO public.user_game_raw VALUES (59, 'user_1719928296060', 583);
INSERT INTO public.user_game_raw VALUES (60, 'user_1719928296060', 528);
INSERT INTO public.user_game_raw VALUES (61, 'user_1719928296060', 441);
INSERT INTO public.user_game_raw VALUES (62, 'user_1719928354475', 557);
INSERT INTO public.user_game_raw VALUES (63, 'user_1719928354475', 508);
INSERT INTO public.user_game_raw VALUES (64, 'user_1719928354474', 124);
INSERT INTO public.user_game_raw VALUES (65, 'user_1719928354474', 504);
INSERT INTO public.user_game_raw VALUES (66, 'user_1719928354475', 786);
INSERT INTO public.user_game_raw VALUES (67, 'user_1719928354475', 569);
INSERT INTO public.user_game_raw VALUES (68, 'user_1719928354475', 238);
INSERT INTO public.user_game_raw VALUES (69, 'user_1719928395863', 418);
INSERT INTO public.user_game_raw VALUES (70, 'user_1719928395863', 370);
INSERT INTO public.user_game_raw VALUES (71, 'user_1719928395862', 743);
INSERT INTO public.user_game_raw VALUES (72, 'user_1719928395862', 556);
INSERT INTO public.user_game_raw VALUES (73, 'user_1719928395863', 619);
INSERT INTO public.user_game_raw VALUES (74, 'user_1719928395863', 938);
INSERT INTO public.user_game_raw VALUES (75, 'user_1719928395863', 852);
INSERT INTO public.user_game_raw VALUES (76, 'user_1719928438158', 468);
INSERT INTO public.user_game_raw VALUES (77, 'user_1719928438158', 998);
INSERT INTO public.user_game_raw VALUES (78, 'user_1719928438157', 75);
INSERT INTO public.user_game_raw VALUES (79, 'user_1719928438157', 327);
INSERT INTO public.user_game_raw VALUES (80, 'user_1719928438158', 122);
INSERT INTO public.user_game_raw VALUES (81, 'user_1719928438158', 687);
INSERT INTO public.user_game_raw VALUES (82, 'user_1719928438158', 915);


--
-- Data for Name: user_master; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: user_game_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_game_raw_id_seq', 82, true);


--
-- Name: user_master_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_master_id_seq', 1, false);


--
-- Name: user_game_raw user_game_raw_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_game_raw
    ADD CONSTRAINT user_game_raw_pkey PRIMARY KEY (id);


--
-- Name: user_master user_master_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_master
    ADD CONSTRAINT user_master_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

