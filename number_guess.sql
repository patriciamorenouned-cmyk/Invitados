--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 4);
INSERT INTO public.games VALUES (2, 2, 97);
INSERT INTO public.games VALUES (3, 2, 5);
INSERT INTO public.games VALUES (4, 3, 703);
INSERT INTO public.games VALUES (5, 3, 297);
INSERT INTO public.games VALUES (6, 2, 273);
INSERT INTO public.games VALUES (7, 2, 237);
INSERT INTO public.games VALUES (8, 2, 94);
INSERT INTO public.games VALUES (9, 4, 61);
INSERT INTO public.games VALUES (10, 4, 975);
INSERT INTO public.games VALUES (11, 5, 804);
INSERT INTO public.games VALUES (12, 5, 1001);
INSERT INTO public.games VALUES (13, 4, 172);
INSERT INTO public.games VALUES (14, 4, 831);
INSERT INTO public.games VALUES (15, 4, 536);
INSERT INTO public.games VALUES (16, 6, 278);
INSERT INTO public.games VALUES (17, 6, 85);
INSERT INTO public.games VALUES (18, 7, 485);
INSERT INTO public.games VALUES (19, 7, 610);
INSERT INTO public.games VALUES (20, 6, 773);
INSERT INTO public.games VALUES (21, 6, 19);
INSERT INTO public.games VALUES (22, 6, 291);
INSERT INTO public.games VALUES (23, 8, 419);
INSERT INTO public.games VALUES (24, 8, 38);
INSERT INTO public.games VALUES (25, 9, 109);
INSERT INTO public.games VALUES (26, 9, 204);
INSERT INTO public.games VALUES (27, 8, 649);
INSERT INTO public.games VALUES (28, 8, 338);
INSERT INTO public.games VALUES (29, 8, 358);
INSERT INTO public.games VALUES (30, 10, 553);
INSERT INTO public.games VALUES (31, 10, 683);
INSERT INTO public.games VALUES (32, 11, 181);
INSERT INTO public.games VALUES (33, 11, 941);
INSERT INTO public.games VALUES (34, 10, 484);
INSERT INTO public.games VALUES (35, 10, 221);
INSERT INTO public.games VALUES (36, 10, 868);
INSERT INTO public.games VALUES (37, 12, 92);
INSERT INTO public.games VALUES (38, 12, 542);
INSERT INTO public.games VALUES (39, 13, 476);
INSERT INTO public.games VALUES (40, 13, 328);
INSERT INTO public.games VALUES (41, 12, 555);
INSERT INTO public.games VALUES (42, 12, 630);
INSERT INTO public.games VALUES (43, 12, 119);
INSERT INTO public.games VALUES (44, 14, 670);
INSERT INTO public.games VALUES (45, 14, 981);
INSERT INTO public.games VALUES (46, 15, 812);
INSERT INTO public.games VALUES (47, 15, 641);
INSERT INTO public.games VALUES (48, 14, 289);
INSERT INTO public.games VALUES (49, 14, 246);
INSERT INTO public.games VALUES (50, 14, 351);
INSERT INTO public.games VALUES (51, 16, 993);
INSERT INTO public.games VALUES (52, 16, 431);
INSERT INTO public.games VALUES (53, 17, 351);
INSERT INTO public.games VALUES (54, 17, 792);
INSERT INTO public.games VALUES (55, 16, 642);
INSERT INTO public.games VALUES (56, 16, 286);
INSERT INTO public.games VALUES (57, 16, 81);
INSERT INTO public.games VALUES (58, 18, 98);
INSERT INTO public.games VALUES (59, 18, 412);
INSERT INTO public.games VALUES (60, 19, 174);
INSERT INTO public.games VALUES (61, 19, 767);
INSERT INTO public.games VALUES (62, 18, 238);
INSERT INTO public.games VALUES (63, 18, 920);
INSERT INTO public.games VALUES (64, 18, 280);
INSERT INTO public.games VALUES (65, 20, 196);
INSERT INTO public.games VALUES (66, 20, 42);
INSERT INTO public.games VALUES (67, 21, 431);
INSERT INTO public.games VALUES (68, 21, 99);
INSERT INTO public.games VALUES (69, 20, 379);
INSERT INTO public.games VALUES (70, 20, 122);
INSERT INTO public.games VALUES (71, 20, 735);
INSERT INTO public.games VALUES (72, 22, 744);
INSERT INTO public.games VALUES (73, 22, 410);
INSERT INTO public.games VALUES (74, 23, 111);
INSERT INTO public.games VALUES (75, 23, 317);
INSERT INTO public.games VALUES (76, 22, 26);
INSERT INTO public.games VALUES (77, 22, 514);
INSERT INTO public.games VALUES (78, 22, 266);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Patricia');
INSERT INTO public.users VALUES (2, 'user_1795025541255');
INSERT INTO public.users VALUES (3, 'user_1795025541254');
INSERT INTO public.users VALUES (4, 'user_1795025844596');
INSERT INTO public.users VALUES (5, 'user_1795025844595');
INSERT INTO public.users VALUES (6, 'user_1795025879686');
INSERT INTO public.users VALUES (7, 'user_1795025879685');
INSERT INTO public.users VALUES (8, 'user_1795026025760');
INSERT INTO public.users VALUES (9, 'user_1795026025759');
INSERT INTO public.users VALUES (10, 'user_1795026383742');
INSERT INTO public.users VALUES (11, 'user_1795026383741');
INSERT INTO public.users VALUES (12, 'user_1795026523274');
INSERT INTO public.users VALUES (13, 'user_1795026523273');
INSERT INTO public.users VALUES (14, 'user_1795026535134');
INSERT INTO public.users VALUES (15, 'user_1795026535133');
INSERT INTO public.users VALUES (16, 'user_1795026548270');
INSERT INTO public.users VALUES (17, 'user_1795026548269');
INSERT INTO public.users VALUES (18, 'user_1795026648510');
INSERT INTO public.users VALUES (19, 'user_1795026648509');
INSERT INTO public.users VALUES (20, 'user_1795026791999');
INSERT INTO public.users VALUES (21, 'user_1795026791998');
INSERT INTO public.users VALUES (22, 'user_1795026854924');
INSERT INTO public.users VALUES (23, 'user_1795026854923');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 78, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 23, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

