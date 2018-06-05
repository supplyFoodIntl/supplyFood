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
-- Name: person_types; Type: TABLE; Schema: public; Owner: azhabiel
--

CREATE TABLE public.person_types (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.person_types OWNER TO azhabiel;

--
-- Name: person_types_id_seq; Type: SEQUENCE; Schema: public; Owner: azhabiel
--

CREATE SEQUENCE public.person_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_types_id_seq OWNER TO azhabiel;

--
-- Name: person_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azhabiel
--

ALTER SEQUENCE public.person_types_id_seq OWNED BY public.person_types.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.person_types ALTER COLUMN id SET DEFAULT nextval('public.person_types_id_seq'::regclass);


--
-- Data for Name: person_types; Type: TABLE DATA; Schema: public; Owner: azhabiel
--

INSERT INTO public.person_types (id, name, created_at, updated_at) VALUES (1, 'individual', '2018-05-30 12:26:48.436702', '2018-05-30 12:26:48.436702');
INSERT INTO public.person_types (id, name, created_at, updated_at) VALUES (2, 'company', '2018-05-30 12:26:48.461423', '2018-05-30 12:26:48.461423');


--
-- Name: person_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azhabiel
--

SELECT pg_catalog.setval('public.person_types_id_seq', 2, true);


--
-- Name: person_types_pkey; Type: CONSTRAINT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.person_types
    ADD CONSTRAINT person_types_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

