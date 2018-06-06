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
-- Name: private_place_types; Type: TABLE; Schema: public; Owner: azhabiel
--

CREATE TABLE public.private_place_types (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.private_place_types OWNER TO azhabiel;

--
-- Name: private_place_types_id_seq; Type: SEQUENCE; Schema: public; Owner: azhabiel
--

CREATE SEQUENCE public.private_place_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.private_place_types_id_seq OWNER TO azhabiel;

--
-- Name: private_place_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azhabiel
--

ALTER SEQUENCE public.private_place_types_id_seq OWNED BY public.private_place_types.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.private_place_types ALTER COLUMN id SET DEFAULT nextval('public.private_place_types_id_seq'::regclass);


--
-- Data for Name: private_place_types; Type: TABLE DATA; Schema: public; Owner: azhabiel
--

INSERT INTO public.private_place_types (id, name, created_at, updated_at) VALUES (1, 'apartment', '2018-06-01 00:25:07.03057', '2018-06-01 00:25:07.03057');
INSERT INTO public.private_place_types (id, name, created_at, updated_at) VALUES (2, 'house', '2018-06-01 00:25:14.845587', '2018-06-01 00:25:14.845587');
INSERT INTO public.private_place_types (id, name, created_at, updated_at) VALUES (3, 'room', '2018-06-02 21:50:10.55893', '2018-06-02 21:50:10.55893');


--
-- Name: private_place_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azhabiel
--

SELECT pg_catalog.setval('public.private_place_types_id_seq', 3, true);


--
-- Name: private_place_types_pkey; Type: CONSTRAINT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.private_place_types
    ADD CONSTRAINT private_place_types_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

