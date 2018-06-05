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
-- Name: postal_code_hints; Type: TABLE; Schema: public; Owner: azhabiel
--

CREATE TABLE public.postal_code_hints (
    id bigint NOT NULL,
    code character varying,
    hint character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.postal_code_hints OWNER TO azhabiel;

--
-- Name: postal_code_hints_id_seq; Type: SEQUENCE; Schema: public; Owner: azhabiel
--

CREATE SEQUENCE public.postal_code_hints_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.postal_code_hints_id_seq OWNER TO azhabiel;

--
-- Name: postal_code_hints_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azhabiel
--

ALTER SEQUENCE public.postal_code_hints_id_seq OWNED BY public.postal_code_hints.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.postal_code_hints ALTER COLUMN id SET DEFAULT nextval('public.postal_code_hints_id_seq'::regclass);


--
-- Data for Name: postal_code_hints; Type: TABLE DATA; Schema: public; Owner: azhabiel
--

INSERT INTO public.postal_code_hints (id, code, hint, created_at, updated_at) VALUES (1, '22281035', 'Real Grandeza', '2018-05-31 01:14:18.342197', '2018-05-31 01:14:18.342197');


--
-- Name: postal_code_hints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azhabiel
--

SELECT pg_catalog.setval('public.postal_code_hints_id_seq', 1, true);


--
-- Name: postal_code_hints_pkey; Type: CONSTRAINT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.postal_code_hints
    ADD CONSTRAINT postal_code_hints_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

