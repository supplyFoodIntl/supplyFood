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
-- Name: user_types; Type: TABLE; Schema: public; Owner: azhabiel
--

CREATE TABLE public.user_types (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_types OWNER TO azhabiel;

--
-- Name: user_types_id_seq; Type: SEQUENCE; Schema: public; Owner: azhabiel
--

CREATE SEQUENCE public.user_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_types_id_seq OWNER TO azhabiel;

--
-- Name: user_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azhabiel
--

ALTER SEQUENCE public.user_types_id_seq OWNED BY public.user_types.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.user_types ALTER COLUMN id SET DEFAULT nextval('public.user_types_id_seq'::regclass);


--
-- Data for Name: user_types; Type: TABLE DATA; Schema: public; Owner: azhabiel
--

INSERT INTO public.user_types (id, name, created_at, updated_at) VALUES (1, 'Donor', '2018-05-30 23:27:37.28995', '2018-05-30 23:27:37.28995');
INSERT INTO public.user_types (id, name, created_at, updated_at) VALUES (2, 'Volunteer', '2018-05-30 23:27:50.337123', '2018-05-30 23:27:50.337123');
INSERT INTO public.user_types (id, name, created_at, updated_at) VALUES (3, 'Manager', '2018-05-30 23:28:08.26674', '2018-05-30 23:28:08.26674');


--
-- Name: user_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azhabiel
--

SELECT pg_catalog.setval('public.user_types_id_seq', 3, true);


--
-- Name: user_types_pkey; Type: CONSTRAINT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.user_types
    ADD CONSTRAINT user_types_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

