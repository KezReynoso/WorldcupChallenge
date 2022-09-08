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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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

INSERT INTO public.games VALUES (225, 2018, 'Final', 299, 296, 4, 2);
INSERT INTO public.games VALUES (226, 2018, 'Third Place', 291, 298, 2, 0);
INSERT INTO public.games VALUES (227, 2018, 'Semi-Final', 296, 298, 2, 1);
INSERT INTO public.games VALUES (228, 2018, 'Semi-Final', 299, 291, 1, 0);
INSERT INTO public.games VALUES (229, 2018, 'Quarter-Final', 296, 307, 3, 2);
INSERT INTO public.games VALUES (230, 2018, 'Quarter-Final', 298, 309, 2, 0);
INSERT INTO public.games VALUES (231, 2018, 'Quarter-Final', 291, 292, 2, 1);
INSERT INTO public.games VALUES (232, 2018, 'Quarter-Final', 299, 312, 2, 0);
INSERT INTO public.games VALUES (233, 2018, 'Eighth-Final', 298, 294, 2, 1);
INSERT INTO public.games VALUES (234, 2018, 'Eighth-Final', 309, 310, 1, 0);
INSERT INTO public.games VALUES (235, 2018, 'Eighth-Final', 291, 302, 3, 2);
INSERT INTO public.games VALUES (236, 2018, 'Eighth-Final', 292, 303, 2, 0);
INSERT INTO public.games VALUES (237, 2018, 'Eighth-Final', 296, 297, 2, 1);
INSERT INTO public.games VALUES (238, 2018, 'Eighth-Final', 307, 308, 2, 1);
INSERT INTO public.games VALUES (239, 2018, 'Eighth-Final', 312, 306, 2, 1);
INSERT INTO public.games VALUES (240, 2018, 'Eighth-Final', 299, 290, 4, 3);
INSERT INTO public.games VALUES (241, 2014, 'Final', 300, 290, 1, 0);
INSERT INTO public.games VALUES (242, 2014, 'Third Place', 304, 292, 3, 0);
INSERT INTO public.games VALUES (243, 2014, 'Semi-Final', 290, 304, 1, 0);
INSERT INTO public.games VALUES (244, 2014, 'Semi-Final', 300, 292, 7, 1);
INSERT INTO public.games VALUES (245, 2014, 'Quarter-Final', 304, 292, 1, 0);
INSERT INTO public.games VALUES (246, 2014, 'Quarter-Final', 290, 291, 1, 0);
INSERT INTO public.games VALUES (247, 2014, 'Quarter-Final', 292, 294, 2, 1);
INSERT INTO public.games VALUES (248, 2014, 'Quarter-Final', 300, 299, 1, 0);
INSERT INTO public.games VALUES (249, 2014, 'Eighth-Final', 292, 293, 2, 1);
INSERT INTO public.games VALUES (250, 2014, 'Eighth-Final', 294, 312, 2, 0);
INSERT INTO public.games VALUES (251, 2014, 'Eighth-Final', 299, 305, 2, 0);
INSERT INTO public.games VALUES (252, 2014, 'Eighth-Final', 300, 289, 2, 1);
INSERT INTO public.games VALUES (253, 2014, 'Eighth-Final', 304, 303, 2, 1);
INSERT INTO public.games VALUES (255, 2014, 'Eighth-Final', 290, 310, 1, 0);
INSERT INTO public.games VALUES (254, 2014, 'Eighth-Final', 295, 301, 2, 1);
INSERT INTO public.games VALUES (256, 2014, 'Eighth-Final', 291, 311, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (289, 'Algeria');
INSERT INTO public.teams VALUES (290, 'Argentina');
INSERT INTO public.teams VALUES (291, 'Belgium');
INSERT INTO public.teams VALUES (292, 'Brazil');
INSERT INTO public.teams VALUES (293, 'Chile');
INSERT INTO public.teams VALUES (294, 'Colombia');
INSERT INTO public.teams VALUES (295, 'Costa Rica');
INSERT INTO public.teams VALUES (296, 'Croatia');
INSERT INTO public.teams VALUES (297, 'Denmark');
INSERT INTO public.teams VALUES (298, 'England');
INSERT INTO public.teams VALUES (299, 'France');
INSERT INTO public.teams VALUES (300, 'Germany');
INSERT INTO public.teams VALUES (301, 'Greece');
INSERT INTO public.teams VALUES (302, 'Japan');
INSERT INTO public.teams VALUES (303, 'Mexico');
INSERT INTO public.teams VALUES (304, 'Netherlands');
INSERT INTO public.teams VALUES (305, 'Nigeria');
INSERT INTO public.teams VALUES (306, 'Portugal');
INSERT INTO public.teams VALUES (307, 'Russia');
INSERT INTO public.teams VALUES (308, 'Spain');
INSERT INTO public.teams VALUES (309, 'Sweden');
INSERT INTO public.teams VALUES (310, 'Switzerland');
INSERT INTO public.teams VALUES (311, 'United States');
INSERT INTO public.teams VALUES (312, 'Uruguay');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 256, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 312, true);


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

