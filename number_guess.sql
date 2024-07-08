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
    guesses integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 5, 4);
INSERT INTO public.games VALUES (2, 7, 672);
INSERT INTO public.games VALUES (3, 7, 229);
INSERT INTO public.games VALUES (4, 8, 756);
INSERT INTO public.games VALUES (5, 8, 989);
INSERT INTO public.games VALUES (6, 7, 922);
INSERT INTO public.games VALUES (7, 7, 0);
INSERT INTO public.games VALUES (8, 7, 868);
INSERT INTO public.games VALUES (9, 9, 216);
INSERT INTO public.games VALUES (10, 9, 631);
INSERT INTO public.games VALUES (11, 10, 259);
INSERT INTO public.games VALUES (12, 10, 172);
INSERT INTO public.games VALUES (13, 9, 763);
INSERT INTO public.games VALUES (14, 9, 0);
INSERT INTO public.games VALUES (15, 9, 367);
INSERT INTO public.games VALUES (16, 11, 298);
INSERT INTO public.games VALUES (17, 11, 602);
INSERT INTO public.games VALUES (18, 12, 219);
INSERT INTO public.games VALUES (19, 12, 480);
INSERT INTO public.games VALUES (20, 11, 6);
INSERT INTO public.games VALUES (21, 11, 134);
INSERT INTO public.games VALUES (22, 11, 690);
INSERT INTO public.games VALUES (23, 5, 4);
INSERT INTO public.games VALUES (24, 13, 493);
INSERT INTO public.games VALUES (25, 13, 477);
INSERT INTO public.games VALUES (26, 14, 969);
INSERT INTO public.games VALUES (27, 14, 369);
INSERT INTO public.games VALUES (28, 13, 611);
INSERT INTO public.games VALUES (29, 13, 274);
INSERT INTO public.games VALUES (30, 13, 279);
INSERT INTO public.games VALUES (31, 15, 317);
INSERT INTO public.games VALUES (32, 15, 419);
INSERT INTO public.games VALUES (33, 16, 843);
INSERT INTO public.games VALUES (34, 16, 15);
INSERT INTO public.games VALUES (35, 15, 721);
INSERT INTO public.games VALUES (36, 15, 208);
INSERT INTO public.games VALUES (37, 15, 584);
INSERT INTO public.games VALUES (38, 17, 172);
INSERT INTO public.games VALUES (39, 17, 42);
INSERT INTO public.games VALUES (40, 18, 545);
INSERT INTO public.games VALUES (41, 18, 26);
INSERT INTO public.games VALUES (42, 17, 189);
INSERT INTO public.games VALUES (43, 17, 878);
INSERT INTO public.games VALUES (44, 17, 319);
INSERT INTO public.games VALUES (45, 19, 779);
INSERT INTO public.games VALUES (46, 19, 788);
INSERT INTO public.games VALUES (47, 20, 572);
INSERT INTO public.games VALUES (48, 20, 271);
INSERT INTO public.games VALUES (49, 19, 95);
INSERT INTO public.games VALUES (50, 19, 643);
INSERT INTO public.games VALUES (51, 19, 68);
INSERT INTO public.games VALUES (52, 21, 343);
INSERT INTO public.games VALUES (53, 21, 401);
INSERT INTO public.games VALUES (54, 22, 468);
INSERT INTO public.games VALUES (55, 22, 756);
INSERT INTO public.games VALUES (56, 21, 357);
INSERT INTO public.games VALUES (57, 21, 431);
INSERT INTO public.games VALUES (58, 21, 68);
INSERT INTO public.games VALUES (59, 23, 426);
INSERT INTO public.games VALUES (60, 23, 832);
INSERT INTO public.games VALUES (61, 24, 140);
INSERT INTO public.games VALUES (62, 24, 400);
INSERT INTO public.games VALUES (63, 23, 944);
INSERT INTO public.games VALUES (64, 23, 919);
INSERT INTO public.games VALUES (65, 23, 520);
INSERT INTO public.games VALUES (66, 5, 11);
INSERT INTO public.games VALUES (67, 25, 369);
INSERT INTO public.games VALUES (68, 25, 731);
INSERT INTO public.games VALUES (69, 26, 642);
INSERT INTO public.games VALUES (70, 26, 190);
INSERT INTO public.games VALUES (71, 25, 158);
INSERT INTO public.games VALUES (72, 25, 876);
INSERT INTO public.games VALUES (73, 25, 928);
INSERT INTO public.games VALUES (74, 27, 438);
INSERT INTO public.games VALUES (75, 27, 709);
INSERT INTO public.games VALUES (76, 28, 717);
INSERT INTO public.games VALUES (77, 28, 528);
INSERT INTO public.games VALUES (78, 27, 388);
INSERT INTO public.games VALUES (79, 27, 901);
INSERT INTO public.games VALUES (80, 27, 298);
INSERT INTO public.games VALUES (81, 31, 884);
INSERT INTO public.games VALUES (82, 31, 104);
INSERT INTO public.games VALUES (83, 32, 960);
INSERT INTO public.games VALUES (84, 32, 437);
INSERT INTO public.games VALUES (85, 31, 974);
INSERT INTO public.games VALUES (86, 31, 880);
INSERT INTO public.games VALUES (87, 31, 583);
INSERT INTO public.games VALUES (88, 33, 262);
INSERT INTO public.games VALUES (89, 33, 884);
INSERT INTO public.games VALUES (90, 34, 117);
INSERT INTO public.games VALUES (91, 34, 186);
INSERT INTO public.games VALUES (92, 33, 201);
INSERT INTO public.games VALUES (93, 33, 800);
INSERT INTO public.games VALUES (94, 33, 102);
INSERT INTO public.games VALUES (95, 5, 9);
INSERT INTO public.games VALUES (96, 35, 559);
INSERT INTO public.games VALUES (97, 35, 995);
INSERT INTO public.games VALUES (98, 36, 728);
INSERT INTO public.games VALUES (99, 36, 342);
INSERT INTO public.games VALUES (100, 35, 231);
INSERT INTO public.games VALUES (101, 35, 488);
INSERT INTO public.games VALUES (102, 35, 363);
INSERT INTO public.games VALUES (103, 37, 507);
INSERT INTO public.games VALUES (104, 37, 858);
INSERT INTO public.games VALUES (105, 38, 867);
INSERT INTO public.games VALUES (106, 38, 549);
INSERT INTO public.games VALUES (107, 37, 583);
INSERT INTO public.games VALUES (108, 37, 862);
INSERT INTO public.games VALUES (109, 37, 452);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1720440979773');
INSERT INTO public.users VALUES (2, 'user_1720440979772');
INSERT INTO public.users VALUES (3, 'user_1720446424929');
INSERT INTO public.users VALUES (4, 'user_1720446424928');
INSERT INTO public.users VALUES (5, 'Riki');
INSERT INTO public.users VALUES (6, 'Ropo');
INSERT INTO public.users VALUES (7, 'user_1720448466008');
INSERT INTO public.users VALUES (8, 'user_1720448466007');
INSERT INTO public.users VALUES (9, 'user_1720448532814');
INSERT INTO public.users VALUES (10, 'user_1720448532813');
INSERT INTO public.users VALUES (11, 'user_1720449499734');
INSERT INTO public.users VALUES (12, 'user_1720449499733');
INSERT INTO public.users VALUES (13, 'user_1720449742666');
INSERT INTO public.users VALUES (14, 'user_1720449742665');
INSERT INTO public.users VALUES (15, 'user_1720449800028');
INSERT INTO public.users VALUES (16, 'user_1720449800027');
INSERT INTO public.users VALUES (17, 'user_1720450202169');
INSERT INTO public.users VALUES (18, 'user_1720450202168');
INSERT INTO public.users VALUES (19, 'user_1720450263966');
INSERT INTO public.users VALUES (20, 'user_1720450263965');
INSERT INTO public.users VALUES (21, 'user_1720450336238');
INSERT INTO public.users VALUES (22, 'user_1720450336237');
INSERT INTO public.users VALUES (23, 'user_1720450357402');
INSERT INTO public.users VALUES (24, 'user_1720450357401');
INSERT INTO public.users VALUES (25, 'user_1720450473034');
INSERT INTO public.users VALUES (26, 'user_1720450473033');
INSERT INTO public.users VALUES (27, 'user_1720450662390');
INSERT INTO public.users VALUES (28, 'user_1720450662389');
INSERT INTO public.users VALUES (29, 'user_1720450723311');
INSERT INTO public.users VALUES (30, 'user_1720450723310');
INSERT INTO public.users VALUES (31, 'user_1720450755163');
INSERT INTO public.users VALUES (32, 'user_1720450755162');
INSERT INTO public.users VALUES (33, 'user_1720450783745');
INSERT INTO public.users VALUES (34, 'user_1720450783744');
INSERT INTO public.users VALUES (35, 'user_1720450836657');
INSERT INTO public.users VALUES (36, 'user_1720450836656');
INSERT INTO public.users VALUES (37, 'user_1720450940001');
INSERT INTO public.users VALUES (38, 'user_1720450940000');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 109, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 38, true);


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

