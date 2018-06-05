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
-- Name: public_place_types; Type: TABLE; Schema: public; Owner: azhabiel
--

CREATE TABLE public.public_place_types (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.public_place_types OWNER TO azhabiel;

--
-- Name: public_place_types_id_seq; Type: SEQUENCE; Schema: public; Owner: azhabiel
--

CREATE SEQUENCE public.public_place_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.public_place_types_id_seq OWNER TO azhabiel;

--
-- Name: public_place_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azhabiel
--

ALTER SEQUENCE public.public_place_types_id_seq OWNED BY public.public_place_types.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.public_place_types ALTER COLUMN id SET DEFAULT nextval('public.public_place_types_id_seq'::regclass);


--
-- Data for Name: public_place_types; Type: TABLE DATA; Schema: public; Owner: azhabiel
--

INSERT INTO public.public_place_types (id, name, created_at, updated_at) VALUES (1, 'Street', '2018-05-30 13:26:08.388477', '2018-05-30 13:26:08.388477');
INSERT INTO public.public_place_types (id, name, created_at, updated_at) VALUES (2, 'Avenue', '2018-05-30 13:26:08.392744', '2018-05-30 13:26:08.392744');
INSERT INTO public.public_place_types (id, name, created_at, updated_at) VALUES (4, 'Road', '2018-05-30 13:32:21.041863', '2018-05-31 19:36:32.839803');


--
-- Name: public_place_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azhabiel
--

SELECT pg_catalog.setval('public.public_place_types_id_seq', 4, true);


--
-- Name: public_place_types_pkey; Type: CONSTRAINT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.public_place_types
    ADD CONSTRAINT public_place_types_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

