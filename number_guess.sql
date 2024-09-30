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

DROP DATABASE number_guess_game;
--
-- Name: number_guess_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess_game OWNER TO freecodecamp;

\connect number_guess_game

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    id integer NOT NULL,
    name character varying(22),
    number_of_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO freecodecamp;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Austin', 11);
INSERT INTO public.games VALUES (2, 'user_1727731444947', 136);
INSERT INTO public.games VALUES (3, 'user_1727731444946', 523);
INSERT INTO public.games VALUES (4, 'user_1727731695545', 771);
INSERT INTO public.games VALUES (5, 'user_1727731695544', 1000);
INSERT INTO public.games VALUES (6, 'user_1727732602557', 768);
INSERT INTO public.games VALUES (7, 'user_1727732602556', 496);
INSERT INTO public.games VALUES (8, 'user_1727732639771', 759);
INSERT INTO public.games VALUES (9, 'user_1727732639770', 585);
INSERT INTO public.games VALUES (10, 'user_1727732680568', 991);
INSERT INTO public.games VALUES (11, 'user_1727732680567', 7);
INSERT INTO public.games VALUES (12, 'user_1727732687276', 457);
INSERT INTO public.games VALUES (13, 'user_1727732687275', 417);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('Austin');
INSERT INTO public.users VALUES ('user_1727731444947');
INSERT INTO public.users VALUES ('user_1727731444946');
INSERT INTO public.users VALUES ('user_1727731695545');
INSERT INTO public.users VALUES ('user_1727731695544');
INSERT INTO public.users VALUES ('user_1727732602557');
INSERT INTO public.users VALUES ('user_1727732602556');
INSERT INTO public.users VALUES ('user_1727732639771');
INSERT INTO public.users VALUES ('user_1727732639770');
INSERT INTO public.users VALUES ('user_1727732680568');
INSERT INTO public.users VALUES ('user_1727732680567');
INSERT INTO public.users VALUES ('user_1727732687276');
INSERT INTO public.users VALUES ('user_1727732687275');


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_id_seq', 13, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (name);


--
-- Name: games games_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_name_fkey FOREIGN KEY (name) REFERENCES public.users(name);


--
-- PostgreSQL database dump complete
--

