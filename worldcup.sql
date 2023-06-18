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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (161, 2018, 'Final', 4, 2, 277, 278);
INSERT INTO public.games VALUES (162, 2018, 'Third Place', 2, 0, 279, 280);
INSERT INTO public.games VALUES (163, 2018, 'Semi-Final', 2, 1, 278, 280);
INSERT INTO public.games VALUES (164, 2018, 'Semi-Final', 1, 0, 277, 279);
INSERT INTO public.games VALUES (165, 2018, 'Quarter-Final', 3, 2, 278, 281);
INSERT INTO public.games VALUES (166, 2018, 'Quarter-Final', 2, 0, 280, 282);
INSERT INTO public.games VALUES (167, 2018, 'Quarter-Final', 2, 1, 279, 283);
INSERT INTO public.games VALUES (168, 2018, 'Quarter-Final', 2, 0, 277, 284);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 2, 1, 280, 285);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 1, 0, 282, 286);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 3, 2, 279, 287);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 2, 0, 283, 288);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 2, 1, 278, 289);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 2, 1, 281, 290);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 2, 1, 284, 291);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 4, 3, 277, 292);
INSERT INTO public.games VALUES (177, 2014, 'Final', 1, 0, 293, 292);
INSERT INTO public.games VALUES (178, 2014, 'Third Place', 3, 0, 294, 283);
INSERT INTO public.games VALUES (179, 2014, 'Semi-Final', 1, 0, 292, 294);
INSERT INTO public.games VALUES (180, 2014, 'Semi-Final', 7, 1, 293, 283);
INSERT INTO public.games VALUES (181, 2014, 'Quarter-Final', 1, 0, 294, 295);
INSERT INTO public.games VALUES (182, 2014, 'Quarter-Final', 1, 0, 292, 279);
INSERT INTO public.games VALUES (183, 2014, 'Quarter-Final', 2, 1, 283, 285);
INSERT INTO public.games VALUES (184, 2014, 'Quarter-Final', 1, 0, 293, 277);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 2, 1, 283, 296);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 2, 0, 285, 284);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 2, 0, 277, 297);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 2, 1, 293, 298);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 2, 1, 294, 288);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 2, 1, 295, 299);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 1, 0, 292, 286);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 2, 1, 279, 300);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (277, 'France');
INSERT INTO public.teams VALUES (278, 'Croatia');
INSERT INTO public.teams VALUES (279, 'Belgium');
INSERT INTO public.teams VALUES (280, 'England');
INSERT INTO public.teams VALUES (281, 'Russia');
INSERT INTO public.teams VALUES (282, 'Sweden');
INSERT INTO public.teams VALUES (283, 'Brazil');
INSERT INTO public.teams VALUES (284, 'Uruguay');
INSERT INTO public.teams VALUES (285, 'Colombia');
INSERT INTO public.teams VALUES (286, 'Switzerland');
INSERT INTO public.teams VALUES (287, 'Japan');
INSERT INTO public.teams VALUES (288, 'Mexico');
INSERT INTO public.teams VALUES (289, 'Denmark');
INSERT INTO public.teams VALUES (290, 'Spain');
INSERT INTO public.teams VALUES (291, 'Portugal');
INSERT INTO public.teams VALUES (292, 'Argentina');
INSERT INTO public.teams VALUES (293, 'Germany');
INSERT INTO public.teams VALUES (294, 'Netherlands');
INSERT INTO public.teams VALUES (295, 'Costa Rica');
INSERT INTO public.teams VALUES (296, 'Chile');
INSERT INTO public.teams VALUES (297, 'Nigeria');
INSERT INTO public.teams VALUES (298, 'Algeria');
INSERT INTO public.teams VALUES (299, 'Greece');
INSERT INTO public.teams VALUES (300, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 300, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

