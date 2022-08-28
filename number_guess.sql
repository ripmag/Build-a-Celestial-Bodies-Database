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
    result integer
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 7);
INSERT INTO public.games VALUES (2, 4, 142);
INSERT INTO public.games VALUES (3, 5, 322);
INSERT INTO public.games VALUES (4, 4, 52);
INSERT INTO public.games VALUES (5, 4, 669);
INSERT INTO public.games VALUES (6, 4, 946);
INSERT INTO public.games VALUES (7, 6, 647);
INSERT INTO public.games VALUES (8, 7, 31);
INSERT INTO public.games VALUES (9, 6, 929);
INSERT INTO public.games VALUES (10, 6, 690);
INSERT INTO public.games VALUES (11, 6, 721);
INSERT INTO public.games VALUES (12, 1, 14);
INSERT INTO public.games VALUES (13, 8, 709);
INSERT INTO public.games VALUES (14, 9, 922);
INSERT INTO public.games VALUES (15, 8, 370);
INSERT INTO public.games VALUES (16, 8, 862);
INSERT INTO public.games VALUES (17, 8, 275);
INSERT INTO public.games VALUES (18, 1, 2);
INSERT INTO public.games VALUES (19, 10, 321);
INSERT INTO public.games VALUES (20, 11, 130);
INSERT INTO public.games VALUES (21, 10, 781);
INSERT INTO public.games VALUES (22, 10, 188);
INSERT INTO public.games VALUES (23, 10, 388);
INSERT INTO public.games VALUES (24, 12, 681);
INSERT INTO public.games VALUES (25, 13, 4);
INSERT INTO public.games VALUES (26, 12, 512);
INSERT INTO public.games VALUES (27, 12, 769);
INSERT INTO public.games VALUES (28, 12, 688);
INSERT INTO public.games VALUES (29, 14, 64);
INSERT INTO public.games VALUES (30, 15, 1001);
INSERT INTO public.games VALUES (31, 14, 675);
INSERT INTO public.games VALUES (32, 14, 21);
INSERT INTO public.games VALUES (33, 14, 58);
INSERT INTO public.games VALUES (34, 16, 204);
INSERT INTO public.games VALUES (35, 17, 336);
INSERT INTO public.games VALUES (36, 16, 557);
INSERT INTO public.games VALUES (37, 16, 599);
INSERT INTO public.games VALUES (38, 16, 444);
INSERT INTO public.games VALUES (39, 18, 204);
INSERT INTO public.games VALUES (40, 19, 238);
INSERT INTO public.games VALUES (41, 18, 13);
INSERT INTO public.games VALUES (42, 18, 17);
INSERT INTO public.games VALUES (43, 18, 453);
INSERT INTO public.games VALUES (44, 20, 123);
INSERT INTO public.games VALUES (45, 21, 449);
INSERT INTO public.games VALUES (46, 20, 507);
INSERT INTO public.games VALUES (47, 20, 269);
INSERT INTO public.games VALUES (48, 20, 915);
INSERT INTO public.games VALUES (49, 22, 653);
INSERT INTO public.games VALUES (50, 23, 19);
INSERT INTO public.games VALUES (51, 22, 939);
INSERT INTO public.games VALUES (52, 22, 657);
INSERT INTO public.games VALUES (53, 22, 324);
INSERT INTO public.games VALUES (54, 24, 614);
INSERT INTO public.games VALUES (55, 25, 504);
INSERT INTO public.games VALUES (56, 24, 978);
INSERT INTO public.games VALUES (57, 24, 338);
INSERT INTO public.games VALUES (58, 24, 639);
INSERT INTO public.games VALUES (59, 26, 532);
INSERT INTO public.games VALUES (60, 27, 21);
INSERT INTO public.games VALUES (61, 26, 595);
INSERT INTO public.games VALUES (62, 26, 723);
INSERT INTO public.games VALUES (63, 26, 654);
INSERT INTO public.games VALUES (64, 28, 701);
INSERT INTO public.games VALUES (65, 29, 295);
INSERT INTO public.games VALUES (66, 28, 612);
INSERT INTO public.games VALUES (67, 28, 639);
INSERT INTO public.games VALUES (68, 28, 392);
INSERT INTO public.games VALUES (69, 30, 59);
INSERT INTO public.games VALUES (70, 31, 801);
INSERT INTO public.games VALUES (71, 30, 556);
INSERT INTO public.games VALUES (72, 30, 317);
INSERT INTO public.games VALUES (73, 30, 737);
INSERT INTO public.games VALUES (74, 38, 2);
INSERT INTO public.games VALUES (75, 39, 1);
INSERT INTO public.games VALUES (76, 40, 607);
INSERT INTO public.games VALUES (77, 40, 948);
INSERT INTO public.games VALUES (78, 41, 339);
INSERT INTO public.games VALUES (79, 41, 255);
INSERT INTO public.games VALUES (80, 40, 317);
INSERT INTO public.games VALUES (81, 40, 738);
INSERT INTO public.games VALUES (82, 40, 784);
INSERT INTO public.games VALUES (83, 42, 48);
INSERT INTO public.games VALUES (84, 42, 701);
INSERT INTO public.games VALUES (85, 43, 737);
INSERT INTO public.games VALUES (86, 43, 763);
INSERT INTO public.games VALUES (87, 42, 775);
INSERT INTO public.games VALUES (88, 42, 197);
INSERT INTO public.games VALUES (89, 42, 446);
INSERT INTO public.games VALUES (90, 44, 741);
INSERT INTO public.games VALUES (91, 44, 317);
INSERT INTO public.games VALUES (92, 45, 769);
INSERT INTO public.games VALUES (93, 45, 130);
INSERT INTO public.games VALUES (94, 44, 149);
INSERT INTO public.games VALUES (95, 44, 961);
INSERT INTO public.games VALUES (96, 44, 61);
INSERT INTO public.games VALUES (97, 46, 546);
INSERT INTO public.games VALUES (98, 46, 187);
INSERT INTO public.games VALUES (99, 47, 918);
INSERT INTO public.games VALUES (100, 47, 618);
INSERT INTO public.games VALUES (101, 46, 901);
INSERT INTO public.games VALUES (102, 46, 388);
INSERT INTO public.games VALUES (103, 46, 770);
INSERT INTO public.games VALUES (104, 48, 94);
INSERT INTO public.games VALUES (105, 48, 77);
INSERT INTO public.games VALUES (106, 49, 954);
INSERT INTO public.games VALUES (107, 49, 192);
INSERT INTO public.games VALUES (108, 48, 160);
INSERT INTO public.games VALUES (109, 48, 589);
INSERT INTO public.games VALUES (110, 48, 88);
INSERT INTO public.games VALUES (111, 39, 13);
INSERT INTO public.games VALUES (112, 50, 445);
INSERT INTO public.games VALUES (113, 50, 90);
INSERT INTO public.games VALUES (114, 51, 787);
INSERT INTO public.games VALUES (115, 51, 449);
INSERT INTO public.games VALUES (116, 50, 450);
INSERT INTO public.games VALUES (117, 50, 898);
INSERT INTO public.games VALUES (118, 50, 420);
INSERT INTO public.games VALUES (119, 52, 704);
INSERT INTO public.games VALUES (120, 52, 998);
INSERT INTO public.games VALUES (121, 53, 466);
INSERT INTO public.games VALUES (122, 53, 621);
INSERT INTO public.games VALUES (123, 52, 128);
INSERT INTO public.games VALUES (124, 52, 723);
INSERT INTO public.games VALUES (125, 52, 690);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Ed');
INSERT INTO public.users VALUES (2, 'user_1661704606999');
INSERT INTO public.users VALUES (3, 'user_1661704606998');
INSERT INTO public.users VALUES (4, 'user_1661707537923');
INSERT INTO public.users VALUES (5, 'user_1661707537922');
INSERT INTO public.users VALUES (6, 'user_1661707841003');
INSERT INTO public.users VALUES (7, 'user_1661707841002');
INSERT INTO public.users VALUES (8, 'user_1661708392207');
INSERT INTO public.users VALUES (9, 'user_1661708392206');
INSERT INTO public.users VALUES (10, 'user_1661708583080');
INSERT INTO public.users VALUES (11, 'user_1661708583079');
INSERT INTO public.users VALUES (12, 'user_1661708603456');
INSERT INTO public.users VALUES (13, 'user_1661708603455');
INSERT INTO public.users VALUES (14, 'user_1661708613253');
INSERT INTO public.users VALUES (15, 'user_1661708613252');
INSERT INTO public.users VALUES (16, 'user_1661708632251');
INSERT INTO public.users VALUES (17, 'user_1661708632250');
INSERT INTO public.users VALUES (18, 'user_1661708639772');
INSERT INTO public.users VALUES (19, 'user_1661708639771');
INSERT INTO public.users VALUES (20, 'user_1661708710060');
INSERT INTO public.users VALUES (21, 'user_1661708710059');
INSERT INTO public.users VALUES (22, 'user_1661708729205');
INSERT INTO public.users VALUES (23, 'user_1661708729204');
INSERT INTO public.users VALUES (24, 'user_1661708744750');
INSERT INTO public.users VALUES (25, 'user_1661708744749');
INSERT INTO public.users VALUES (26, 'user_1661709014949');
INSERT INTO public.users VALUES (27, 'user_1661709014948');
INSERT INTO public.users VALUES (28, 'user_1661709519291');
INSERT INTO public.users VALUES (29, 'user_1661709519290');
INSERT INTO public.users VALUES (30, 'user_1661709556336');
INSERT INTO public.users VALUES (31, 'user_1661709556335');
INSERT INTO public.users VALUES (32, 'ed1234567890123456789022');
INSERT INTO public.users VALUES (33, 'ed1234567890');
INSERT INTO public.users VALUES (34, 'ed123456789');
INSERT INTO public.users VALUES (35, 'ed12345678');
INSERT INTO public.users VALUES (36, 'ed1234567');
INSERT INTO public.users VALUES (37, 'ed123456');
INSERT INTO public.users VALUES (38, 'ed12345');
INSERT INTO public.users VALUES (39, 'ed1234');
INSERT INTO public.users VALUES (40, 'user_1661710960047');
INSERT INTO public.users VALUES (41, 'user_1661710960046');
INSERT INTO public.users VALUES (42, 'user_1661711017643');
INSERT INTO public.users VALUES (43, 'user_1661711017642');
INSERT INTO public.users VALUES (44, 'user_1661711077775');
INSERT INTO public.users VALUES (45, 'user_1661711077774');
INSERT INTO public.users VALUES (46, 'user_1661711122506');
INSERT INTO public.users VALUES (47, 'user_1661711122505');
INSERT INTO public.users VALUES (48, 'user_1661711130775');
INSERT INTO public.users VALUES (49, 'user_1661711130774');
INSERT INTO public.users VALUES (50, 'user_1661711309614');
INSERT INTO public.users VALUES (51, 'user_1661711309613');
INSERT INTO public.users VALUES (52, 'user_1661711523350');
INSERT INTO public.users VALUES (53, 'user_1661711523349');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 125, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 53, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

