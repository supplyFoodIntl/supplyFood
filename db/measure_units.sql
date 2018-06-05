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
-- Name: measure_units; Type: TABLE; Schema: public; Owner: azhabiel
--

CREATE TABLE public.measure_units (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.measure_units OWNER TO azhabiel;

--
-- Name: measure_units_id_seq; Type: SEQUENCE; Schema: public; Owner: azhabiel
--

CREATE SEQUENCE public.measure_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.measure_units_id_seq OWNER TO azhabiel;

--
-- Name: measure_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azhabiel
--

ALTER SEQUENCE public.measure_units_id_seq OWNED BY public.measure_units.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.measure_units ALTER COLUMN id SET DEFAULT nextval('public.measure_units_id_seq'::regclass);


--
-- Data for Name: measure_units; Type: TABLE DATA; Schema: public; Owner: azhabiel
--

INSERT INTO public.measure_units (id, name, created_at, updated_at) VALUES (1, 'Kilogram', '2018-05-31 01:12:01.034452', '2018-05-31 01:12:01.034452');
INSERT INTO public.measure_units (id, name, created_at, updated_at) VALUES (2, 'Gram', '2018-05-31 01:12:11.192988', '2018-05-31 01:12:11.192988');
INSERT INTO public.measure_units (id, name, created_at, updated_at) VALUES (3, 'Pound', '2018-05-31 01:12:21.994983', '2018-05-31 01:12:21.994983');
INSERT INTO public.measure_units (id, name, created_at, updated_at) VALUES (4, 'Ounce', '2018-05-31 01:12:38.998347', '2018-05-31 01:12:38.998347');
INSERT INTO public.measure_units (id, name, created_at, updated_at) VALUES (5, 'Liter', '2018-05-31 19:45:05.580657', '2018-05-31 19:45:05.580657');
INSERT INTO public.measure_units (id, name, created_at, updated_at) VALUES (6, 'Mililiter', '2018-05-31 19:48:54.955955', '2018-05-31 19:48:54.955955');


--
-- Name: measure_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azhabiel
--

SELECT pg_catalog.setval('public.measure_units_id_seq', 6, true);


--
-- Name: measure_units_pkey; Type: CONSTRAINT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.measure_units
    ADD CONSTRAINT measure_units_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

