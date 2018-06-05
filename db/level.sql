--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: levels; Type: TABLE; Schema: public; Owner: azhabiel
--

CREATE TABLE public.levels (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    observation character varying
);


ALTER TABLE public.levels OWNER TO azhabiel;

--
-- Name: levels_id_seq; Type: SEQUENCE; Schema: public; Owner: azhabiel
--

CREATE SEQUENCE public.levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.levels_id_seq OWNER TO azhabiel;

--
-- Name: levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azhabiel
--

ALTER SEQUENCE public.levels_id_seq OWNED BY public.levels.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.levels ALTER COLUMN id SET DEFAULT nextval('public.levels_id_seq'::regclass);


--
-- Data for Name: levels; Type: TABLE DATA; Schema: public; Owner: azhabiel
--

INSERT INTO public.levels (id, name, created_at, updated_at, observation) VALUES (3, 'Good samaritan', '2018-05-31 00:43:20.638372', '2018-05-31 19:43:52.164949', 'Some person who wants to help the other no matter what (11-50 meals/month)');
INSERT INTO public.levels (id, name, created_at, updated_at, observation) VALUES (1, 'Caregiver', '2018-05-31 00:35:06.537428', '2018-05-31 19:44:04.219932', 'Just a person with a good heart (1-10 meals/month)');
INSERT INTO public.levels (id, name, created_at, updated_at, observation) VALUES (2, 'Patron', '2018-05-31 00:37:46.889979', '2018-05-31 19:44:27.003279', 'A beacon to a better world (51+ meals/month)');


--
-- Name: levels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azhabiel
--

SELECT pg_catalog.setval('public.levels_id_seq', 3, true);


--
-- Name: levels_pkey; Type: CONSTRAINT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.levels
    ADD CONSTRAINT levels_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

